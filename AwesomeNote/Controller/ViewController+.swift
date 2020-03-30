//
//  ViewController_Extention.swift
//  NotesWithStoryBoard
//
//  Created by Scott Leonard on 8/30/19.
//  Copyright © 2019 Scott Leonard. All rights reserved.
//

import UIKit

extension ViewController : UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: ReuseIdentifier.key, for: indexPath) as! theCell
		
		let notesArray = notes[indexPath.row]
		cell.backgroundColor = .white
		cell.titleLabel.text = notesArray.title
		let firstSentenceToDisplay = notesArray.noteContent.split(separator: ".")
		cell.descriptionLabel.text = "\(String(firstSentenceToDisplay[0]))."
		cell.updateCustomConstraints()
		
		return cell
	}
	
	
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return notes.count
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 100
	}
	
	
	func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
		notes.remove(at: indexPath.row)
		tableView.deleteRows(at: [indexPath], with: .fade)
		Note.saveData(userData: notes)
	}
	
	func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
		return .delete
	}
	
	func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
		
		print(notes)
		let movedValue = notes.remove(at: sourceIndexPath.row)
		notes.insert(movedValue, at: destinationIndexPath.row)
		// notes.swapAt(sourceIndexPath.row, destinationIndexPath.row)
		print(notes)
		Note.saveData(userData: notes)
	}
	
}
