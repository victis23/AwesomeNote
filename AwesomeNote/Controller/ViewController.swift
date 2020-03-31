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
	private var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
	
	//Instance of helper class for saving and retriving items from persistent container.
	weak internal var coreDataHelper : Retriever? {
		Retriever(context: context)
	}
	
	// Instance of Core Data Note Object.
	weak private var note : CDNote? {
		let note = CDNote(context: context)
		return note
	}
	
	// Note Objects that will be displayed in the tableview.
	// When updated sorts objects by index.
	internal var notes : [CDNote] = [] {didSet {notes.sort {$0.index < $1.index}}}
	
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
		setBackgroundColor()
		
		//Set color of title.
//		self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
		self.navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
	}
	
	///Sets background color on entire view.
	/// - Important: Removes background color from tableview.
	private func setBackgroundColor(){
		tableView.backgroundColor = UIColor.clear
		
		let gradient = CAGradientLayer()
		gradient.type = .axial
		gradient.colors = [UIColor(red: 0.05, green: 0.2, blue: 1, alpha: 0.8).cgColor, UIColor(red: 0.05, green: 0.2, blue: 1, alpha: 0.6).cgColor]
		
		//Bottom Y | Right X
		gradient.startPoint = CGPoint(x: 0.25, y: 1)
		//Top Y | Left X
		gradient.endPoint = CGPoint(x: 0.25, y: 1)
		gradient.frame = view.bounds
		
		let newView = UIView()
		newView.layer.addSublayer(gradient)
		
		self.view.addSubview(newView)
		view.sendSubviewToBack(newView)
	}
	
	@IBAction func unwind(segue fromSegue: UIStoryboardSegue){
		
		guard let note = note else {return}
		
		if fromSegue.identifier == SegueKeys.self.save.rawValue {
			
			let saveNoteController = fromSegue.source as! AddNote_ViewController
			
			//Enables tab button for new notes.
			saveNoteController.setTabsToDisabled(changeState: false)
			
			// If statement checks whether value is being edited or is a new entry.
			if let indexPath = tableView.indexPathForSelectedRow {
				
				//Taken from Objective-C / Remember that CoreData stores numbers as NSNumber objects.
				//If you use an integer here you'll get a memory mismatch error.
				let query = NSPredicate(format: "index = %@", NSNumber(value: indexPath.row + 1))
				
				guard let content = saveNoteController.userNoteTextView.text, content != "",
					let object = coreDataHelper?.retrieveFromCoreData(query: query) else {return}
				
				//Deletes objects with matching index from coredata.
				//Remember this is a required step or we will have duplicates.
				object.forEach {
					coreDataHelper?.remove(object: $0)
				}
				
				let displayTitle = content.split(separator: " ")
				var setTitle : String = ""
				
				setTitle = self.setTitle(displayTitle, setTitle)
				
				note.title = setTitle
				note.content = content
				note.index = Int16(indexPath.row + 1)
				
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
				
				// Executes on first save.
				
				guard let content = saveNoteController.userNoteTextView.text, content != "" else {return}
				let displayTitle = content.split(separator: " ")
				var setTitle : String = ""
				
				setTitle = self.setTitle(displayTitle, setTitle)
				
				note.title = setTitle
				note.content = content
				
				if notes.isEmpty {
					note.index = Int16(1)
				}else{
					note.index = Int16(notes.count + 1)
				}
				
				
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
	private func setTitle(_ displayTitle : [String.SubSequence], _ setTitleIncoming : String)->String{
		
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
	
	private func checkForInterruption(){
		
		QuickSaveData.retrieveData(completion: { [weak self] in
			if $0 != nil {
				self?.performSegue(withIdentifier: "resume", sender: self)
			}
		})
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





