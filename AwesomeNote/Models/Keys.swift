//
//  Keys.swift
//  AwesomeNote
//
//  Created by Scott Leonard on 3/30/20.
//  Copyright © 2020 DuhMarket. All rights reserved.
//

import UIKit

enum SegueKeys : String {
	case cancel = "cancel"
	case save = "save"
	case edit = "edit"
	
}

struct ReuseIdentifier {
	static var key = "cell"
	static var edit_key = "edit"
	static var cancel = "cancel"
	static var pause = "pause"
	static var quit = "quit"
	static var save = "save"
}


