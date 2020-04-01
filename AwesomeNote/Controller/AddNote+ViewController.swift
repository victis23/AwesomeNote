//
//  AddNote_ViewController.swift
//  NotesWithStoryBoard
//
//  Created by Michael Wells on 3/30/2020
//  Copyright © 2019 Michael Wells. All rights reserved.
//

import UIKit

/// Controls screen for adding new notes to application.
class AddNote_ViewController: UIViewController {
	
	@IBOutlet weak var userNoteTextView: UITextView!
	var newNote : CDNote?
	public var setTitleOfView = "New Note"
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		//Removes default text.
		clearDefaultText()
		
		//Must be called after cleardefault text otherwise value is reset.
		checkForData()
		
		callObservers()
		userNoteTextView.becomeFirstResponder()
		setNavigationBarAppearance()
		userNoteTextView.textColor = UIColor(red: 0.3, green: 0.4, blue: 0.8, alpha: 1)
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		setTabsToDisabled(changeState: true)
		self.modalPresentationCapturesStatusBarAppearance = true
	}
	
	override var childForStatusBarHidden: UIViewController? {
		setNeedsStatusBarAppearanceUpdate()
		return self
	}
	
	override var prefersStatusBarHidden: Bool {
		get{
			return true
		}
	}
	
	func setNavigationBarAppearance(){
		
		self.title = setTitleOfView
		
		// Makes sure title on this screen are always inline(small).
		navigationController?.navigationBar.prefersLargeTitles = false
		
		//Sets color for inline title to white.
		navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
		
		//Sets color for menu bar buttons to white.
		navigationController?.navigationBar.tintColor = .white
		navigationController?.navigationBar.barStyle = .default
		navigationController?.navigationBar.isTranslucent = true
		
		//Sets navigationbar background color.
		navigationController?.navigationBar.barTintColor = UIColor(red: 0.3, green: 0.4, blue: 0.8, alpha: 1)
	}
	
	/// Contains bundle of observers used to monitor application state.
	private func callObservers(){
		checkForCancelNotificationFromMainController()
		checkForPauseOrQuit()
		checkForSaving()
	}
	
	///Clears out default text must be called first.
	private func clearDefaultText(){
		userNoteTextView.text = newNote?.content
	}
	
	/// Adds observer that notifies application if user cancels open note when creating from tab.
	/// - Note: If notification is recieved text data is removed from UITextView.
	private func checkForCancelNotificationFromMainController(){
		NotificationCenter.default.addObserver(self,
											   selector: #selector(clearNewNote(_:)),
											   name: NSNotification.Name(ReuseIdentifier.cancel),
											   object: nil)
	}
	
	/// Monitors application state for major changes.
	/// - Pause Observer: Adds observer that notifies application if application is no longer active (enters foreground).
	/// - Quit Observer: Adds observer that notifies application if terminated.
	private func checkForPauseOrQuit(){
		NotificationCenter.default.addObserver(self,
											   selector: #selector(autoSave),
											   name: NSNotification.Name(ReuseIdentifier.pause),
											   object: nil)
		
		
		NotificationCenter.default.addObserver(self,
											   selector: #selector(autoSave),
											   name: NSNotification.Name(ReuseIdentifier.quit),
											   object: nil)
	}
	
	/// Clears data from UITextView when user saves.
	/// - Note: This should automatically trigger a segue back to the main view controller.
	private func checkForSaving(){
		NotificationCenter.default.addObserver(self,
											   selector: #selector(clearNewNote(_:)),
											   name: NSNotification.Name(ReuseIdentifier.save),
											   object: nil)
	}
	
	/// Checks device file structure for a .plist file containing temporarily saved note data.
	/// - Important: Once the data is retrieved  the textview is updated and the file is removed from disk.
	private func checkForData(){
		
		defer {
			try? FileManager.default.removeItem(at: QuickSaveData.createURL())
		}
		
		QuickSaveData.retrieveData(completion: { [weak self] in
			guard let input = $0?.userInput else {return}
			self?.userNoteTextView.text = input
			print(input)
		})
		
	}
	
	/// Called when application state is interrupted while note is being created.
	@objc private func autoSave(){
		guard let quickData = userNoteTextView.text else {return}
		guard quickData != "" else {return}
		
		///Calls static method on `QuickSaveData` which saves a `QuickSaveDataObject` which contains a string.
		QuickSaveData.saveData(QuickSaveData(userInput: quickData))
	}
	
	
	/// Removes all text from UITextView.
	@objc private func clearNewNote(_ : Notification){
		
		userNoteTextView.text = nil
		
		setTabsToDisabled(changeState: false)
	}
	
	/// Disables tabs buttons.
	public func setTabsToDisabled(changeState:Bool){
		
		if let tab = self.tabBarController?.tabBar.items {
			tab.forEach {
				$0.isEnabled = !changeState
			}
		}
	}
}
