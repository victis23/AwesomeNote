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
	var notes : [Note] = []
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		tableView.delegate = self
		tableView.dataSource = self
		
		notes = Note.retrieveData() ?? []
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
				
				let note = Note(title: setTitle, noteContent: content)
				
				notes.remove(at: indexPath.row)
				notes.insert(note, at: indexPath.row)
				tableView.deselectRow(at: indexPath, animated: true)
				tableView.reloadData()
				Note.saveData(userData: notes)
				NotificationCenter.default.post(name: NSNotification.Name(ReuseIdentifier.save), object: nil)
			} else {
				guard let content = saveNoteController.userNoteTextView.text, content != "" else {return}
				let displayTitle = content.split(separator: " ")
				var setTitle : String = ""
				
				setTitle = self.setTitle(displayTitle, setTitle)
				
				let newNote = Note(title: setTitle, noteContent: content)
				
				notes.append(newNote)
				Note.saveData(userData: notes)
				tableView.reloadData()
				NotificationCenter.default.post(name: NSNotification.Name(ReuseIdentifier.save), object: nil)
			}
		}else if fromSegue.identifier == SegueKeys.self.cancel.rawValue{
			NotificationCenter.default.post(name: NSNotification.Name(ReuseIdentifier.cancel), object: nil)
			print("Note was cancelled...")
		}
	}
	
	
	func setTitle(_ displayTitle : [String.SubSequence], _ setTitleIncoming : String)->String{
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





