//
//  ViewController_Extention.swift
//  NotesWithStoryBoard
//
//  Created by Michael Wells on 8/30/19.
//  Copyright © 2019 Scott Leonard. All rights reserved.
//

import UIKit

extension ViewController : UITableViewDelegate, UITableViewDataSource {
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		let cell = tableView.dequeueReusableCell(withIdentifier: ReuseIdentifier.key, for: indexPath) as! theCell
		
		let notesArray = notes[indexPath.row]
		
		if let content = notesArray.content {
			
			//Background on entire cell.
			cell.backgroundColor = .clear
			
			//Title.
			cell.titleLabel.text = notesArray.title
			cell.titleLabel.textColor = .white
			
			//Description.
			let firstSentenceToDisplay = content.split(separator: ".")
			cell.descriptionLabel.text = "\(String(firstSentenceToDisplay[0]))."
			cell.descriptionLabel.textColor = .white
			cell.updateCustomConstraints()
		}
		
		return cell
	}
	
	
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return notes.count
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 100
	}
	
	
	func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
		
		let removedObject = notes.remove(at: indexPath.row)
		
		coreDataHelper?.remove(object: removedObject)
		
		tableView.deleteRows(at: [indexPath], with: .fade)
		
	}
	
	func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
		return .delete
	}
	
	func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
		
		print(notes)
		
		let movedValue = notes.remove(at: sourceIndexPath.row)
		notes.insert(movedValue, at: destinationIndexPath.row)
		
		print(notes)

		coreDataHelper?.swap(movedValue, with: notes[destinationIndexPath.row])
		coreDataHelper?.saveInCoreData()
		
	}

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		
		//Used to determine if row is being edited.
		isEditingRowForIndexPath = (true,indexPath)
		
		tableView.deselectRow(at: indexPath, animated: true)
	}
	
}
