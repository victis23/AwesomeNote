//
//  ViewController.swift
//  AwesomeNote
//
//  Created by Michael Wells on 3/30/20.
//  Copyright © 2020 DuhMarket. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var tableView: UITableView!
	
	//Persistent container context used to save values to local database.
	var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
	
	//Instance of helper class for saving and retriving items from persistent container.
	weak var coreDataHelper : Retriever? {
		Retriever(context: context)
	}
	
	// Instance of Core Data Note Object.
	weak var note : CDNote? {
		let note = CDNote(context: context)
		return note
	}
	
	// Note Objects that will be displayed in the tableview.
	var notes : [CDNote] = []
	
	//MARK: Application State
	
	/// Sets delegate & datasource for tableview
	/// - Note: Checks if application was interrumpted when note was being created.
	/// - Important: Calls helper and retrieves an array of items from persistent container.
	override func viewDidLoad() {
		super.viewDidLoad()
		tableView.delegate = self
		tableView.dataSource = self
		
		notes = coreDataHelper?.retrieveFromCoreData() ?? []
		checkForInterruption()
		
	}
	
	@IBAction func unwind(segue fromSegue: UIStoryboardSegue){
		
		guard let note = note else {return}
		
		if fromSegue.identifier == SegueKeys.self.save.rawValue {
			
			let saveNoteController = fromSegue.source as! AddNote_ViewController
			
			if let indexPath = tableView.indexPathForSelectedRow {
				
				guard let content = saveNoteController.userNoteTextView.text, content != "" else {return}
				let displayTitle = content.split(separator: " ")
				var setTitle : String = ""
				
				setTitle = self.setTitle(displayTitle, setTitle)
				
				note.title = setTitle
				note.content = content
				coreDataHelper?.saveInCoreData()
				
				//Removes old version of note from Notes Array.
				notes.remove(at: indexPath.row)
				//Writes updated version of note to Array.
				notes.insert(note, at: indexPath.row)
				
				//Deselects row and reloads table.
				tableView.deselectRow(at: indexPath, animated: true)
				tableView.reloadData()
				
				//
				NotificationCenter.default.post(name: NSNotification.Name(ReuseIdentifier.save), object: nil)
				
			} else {
				guard let content = saveNoteController.userNoteTextView.text, content != "" else {return}
				let displayTitle = content.split(separator: " ")
				var setTitle : String = ""
				
				setTitle = self.setTitle(displayTitle, setTitle)
				
				note.title = setTitle
				note.content = content
				
				notes.append(note)
				coreDataHelper?.saveInCoreData()
				tableView.reloadData()
				NotificationCenter.default.post(name: NSNotification.Name(ReuseIdentifier.save), object: nil)
			}
		}else if fromSegue.identifier == SegueKeys.self.cancel.rawValue{
			NotificationCenter.default.post(name: NSNotification.Name(ReuseIdentifier.cancel), object: nil)
			print("Note was cancelled...")
		}
	}
	
	
	/// Sets the preview test user sees for each note added to tableview.
	/// - Important: The max length for preview is 4 words.
	func setTitle(_ displayTitle : [String.SubSequence], _ setTitleIncoming : String)->String{
		
		//Holds preview text.
		var setTitle = setTitleIncoming
		
		switch displayTitle.count {
		case 1 :
			setTitle = "\(displayTitle[0])  ..."
		case 2 :
			setTitle = "\(displayTitle[0]) \(displayTitle[1])  ..."
		case 3 :
			setTitle = "\(displayTitle[0]) \(displayTitle[1]) \(displayTitle[2])  ..."
		case 4 :
			setTitle = "\(displayTitle[0]) \(displayTitle[1]) \(displayTitle[2]) \(displayTitle[3]) ..."
		case 4... : // greater than 4
			setTitle = "\(displayTitle[0]) \(displayTitle[1]) \(displayTitle[2]) \(displayTitle[3]) ..."
		default :
			break
		}
		
		return setTitle
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		
		if segue.identifier == SegueKeys.self.edit.rawValue {
			
			let destination = segue.destination as! AddNote_ViewController
			
			guard let indexPath = tableView.indexPathForSelectedRow else {return}
			let note = notes[indexPath.row]
			destination.newNote = note
			destination.setTitleOfView = "Edit Note"
		}
		
		if segue.identifier == "resume" {
			
		}
	}
	
	func checkForInterruption(){
		
		if QuickSaveData.retrieveData() != nil {
			performSegue(withIdentifier: "resume", sender: self)
		}
		
	}
	
	// MARK: Action
	@IBAction func edit(_ sender: Any) {
		let setEditMode = tableView.isEditing
		tableView.setEditing(!setEditMode, animated: true)
		
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		navigationController?.navigationBar.prefersLargeTitles = true
	}
	
	
}





