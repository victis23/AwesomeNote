//
//  AddNote_ViewController.swift
//  NotesWithStoryBoard
//
//  Created by Michael Wells on 3/30/2020
//  Copyright © 2019 Michael Wells. All rights reserved.
//

import UIKit

class AddNote_ViewController: UIViewController {
	@IBOutlet weak var userNoteTextView: UITextView!
	var newNote : CDNote?
	var setTitleOfView = "New Note"
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		callObservers()
		userNoteTextView.text = newNote?.content
		userNoteTextView.becomeFirstResponder()
		self.title = setTitleOfView
		
		// Makes sure title on this screen are always inline(small).
		navigationController?.navigationBar.prefersLargeTitles = false
	}
	
	/// Contains bundle of observers used to monitor application state.
	func callObservers(){
		checkForCancelNotificationFromMainController()
		checkForPauseOrQuit()
		checkForData()
		checkForSaving()
	}
	
	
	
	
	func checkForCancelNotificationFromMainController(){
		NotificationCenter.default.addObserver(self, selector: #selector(clearNewNote(_:)), name: NSNotification.Name(ReuseIdentifier.cancel), object: nil)
	}
	
	func checkForPauseOrQuit(){
		NotificationCenter.default.addObserver(self, selector: #selector(autoSave), name: NSNotification.Name(ReuseIdentifier.pause), object: nil)
		NotificationCenter.default.addObserver(self, selector: #selector(autoSave), name: NSNotification.Name(ReuseIdentifier.quit), object: nil)
	}
	
	@objc func autoSave(){
		guard let quickData = userNoteTextView.text else {return}
		guard quickData != "" else {return}
		
		QuickSaveData.saveData(QuickSaveData(userInput: quickData))
	}
	
	
	
	@objc func clearNewNote(_ : Notification){
		userNoteTextView.text = nil
	}
	
	func checkForData(){
		
		// see if file exists and has content
		if QuickSaveData.retrieveData() != nil {
			userNoteTextView.text = QuickSaveData.retrieveData()?.userInput
			
			try? FileManager.default.removeItem(at: QuickSaveData.createURL())
		}
		
	}
	
	func checkForSaving(){
		NotificationCenter.default.addObserver(self, selector: #selector(clearNewNote(_:)), name: NSNotification.Name(ReuseIdentifier.save), object: nil)
	}
	
	
}
