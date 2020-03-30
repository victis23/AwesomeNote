//
//  theCell.swift
//  NotesWithStoryBoard
//
//  Created by Michael Wells on 3/30/2020
//  Copyright © 2019 Michael Wells. All rights reserved.
//

// MARK: Questions
/*
1. find out why constraints were not working in Main.storyBoard (had to add manually below)


*/

import UIKit

class theCell : UITableViewCell {
	
	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var descriptionLabel: UILabel!
	
	func updateCustomConstraints(){
		titleLabel.translatesAutoresizingMaskIntoConstraints = false
		descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
		
		titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
		titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
		descriptionLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
		descriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
		
		descriptionLabel.lineBreakMode = .byWordWrapping
		descriptionLabel.numberOfLines = 0
	}
	
	
	
}
