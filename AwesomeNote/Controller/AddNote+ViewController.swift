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
		
		callObservers()
		userNoteTextView.text = newNote?.content
		userNoteTextView.becomeFirstResponder()
		self.title = setTitleOfView
		
		// Makes sure title on this screen are always inline(small).
		navigationController?.navigationBar.prefersLargeTitles = false
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		setTabsToDisabled(changeState: true)
	}
	
	/// Contains bundle of observers used to monitor application state.
	private func callObservers(){
		checkForCancelNotificationFromMainController()
		checkForPauseOrQuit()
		checkForData()
		checkForSaving()
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
	/// - Important: Once the data is retrieved the file is removed from disk.
	private func checkForData(){
		
		if QuickSaveData.retrieveData() != nil {
			userNoteTextView.text = QuickSaveData.retrieveData()?.userInput
			
			try? FileManager.default.removeItem(at: QuickSaveData.createURL())
		}
		
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
				print($0.accessibilityElementIsFocused())
			}
		}
	}
}
