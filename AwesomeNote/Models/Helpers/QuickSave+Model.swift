//
//  QuickSave+Model.swift
//  AwesomeNote
//
//  Created by Michael Wells on 3/30/20.
//  Copyright © 2020 DuhMarket. All rights reserved.
//

import Foundation

struct QuickSaveData : Codable {
	var userInput : String
	
	static func createURL()->URL{
		let folder = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
		let filepath = folder.appendingPathComponent("tempData").appendingPathExtension("plist")
		
		return filepath
	}
	
	static func saveData(_ incomingData : QuickSaveData){
		let encoder = PropertyListEncoder()
		guard let data = try? encoder.encode(incomingData) else {return}
		try? data.write(to: createURL())
		print("\(data) data has been saved to: \(createURL())")
		
		
	}
	
	static func retrieveData()->QuickSaveData?{
		let decoder = PropertyListDecoder()
		guard let rawData = try? Data(contentsOf: createURL()) else {return nil}
		guard let decodedData = try? decoder.decode(QuickSaveData.self, from: rawData) else {return nil}
		return decodedData
	}
}
