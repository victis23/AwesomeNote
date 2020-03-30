//
//  QuickSave+Model.swift
//  AwesomeNote
//
//  Created by Michael Wells on 3/30/20.
//  Copyright © 2020 DuhMarket. All rights reserved.
//

import Foundation

///Contains data user did not have the opportunity to save.
struct QuickSaveData : Codable {
	
	var userInput : String
}

///Creates a .plist containing temporary data user did not have the chance to save.
extension QuickSaveData {
	
	///Creates empty .plist file.
	static func createURL()->URL{
		let folder = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
		let filepath = folder.appendingPathComponent("tempData").appendingPathExtension("plist")
		
		return filepath
	}
	
	///Writes data to .plist file saved on disk.
	static func saveData(_ incomingData : QuickSaveData){
		let encoder = PropertyListEncoder()
		guard let data = try? encoder.encode(incomingData) else {return}
		try? data.write(to: createURL())
		print("\(data) data has been saved to: \(createURL())")
		
		
	}
	
	///Retrieves plist file and decodes data into a QuickSaveData Object.
	static func retrieveData(completion :@escaping (QuickSaveData?)->Void){
		let decoder = PropertyListDecoder()
		guard let rawData = try? Data(contentsOf: createURL()) else {return}
		guard let decodedData = try? decoder.decode(QuickSaveData.self, from: rawData) else {return}
		completion(decodedData)
	}
}
