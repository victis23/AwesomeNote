
//  Note_Model.swift
//  NotesWithStoryBoard
//
//
//  Created by Michael Wells on 3/30/2020
//  Copyright © 2019 Michael Wells. All rights reserved.
//

import Foundation


struct Note : Codable {
	var title : String
	var noteContent : String
}


extension Note {
	
	static func setSavedDataPath()->URL{
		let container = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
		let path = container.appendingPathComponent("savedNotes").appendingPathExtension("plist")
		
		return path
	}
	
	static func saveData(userData : [Note]){
		let encoder = PropertyListEncoder()
		guard let data = try? encoder.encode(userData) else {return}
		try? data.write(to: self.setSavedDataPath())
		print("Data was written to disk. Of value: \(data) : At \(self.setSavedDataPath())")
	}
	
	static func retrieveData()->[Note]?{
		let decoder = PropertyListDecoder()
		guard let rawData = try? Data(contentsOf: self.setSavedDataPath()) else {return nil}
		guard let decodedData = try? decoder.decode([Note].self, from: rawData) else {return nil}
		
		return decodedData
	}
}
