//
//  Notes.swift
//  AwesomeNote
//
//  Created by Scott Leonard on 3/31/20.
//  Copyright © 2020 DuhMarket. All rights reserved.
//

import Foundation

/// Object used in CollectionViewChild's collection view datasource.
struct Notes : Hashable {
	var note : CDNote
	var id :Int {
		Int(note.index)
	}
}
