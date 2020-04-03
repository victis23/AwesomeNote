//
//  DynamoDBHelper.swift
//  AwesomeNote
//
//  Created by Scott Leonard on 4/3/20.
//  Copyright © 2020 DuhMarket. All rights reserved.
//

import Foundation
import AWSAppSync


///Class used to retrieve and write to AWS DynamoDB — Class is subclass of Retriever.
class DynamoDBHelper : Retriever {
	
	//AppSync Client used to perform CRUD.
	var appSyncClient = (UIApplication.shared.delegate as! AppDelegate).appSyncClientBridge
	
	var title : String
	var content : String
	
	init?(title:String, content:String){
		self.title = title
		self.content = content
		super.init(context: (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext)
	}
	
	override public func remove(object:Any){
		
	}
	
	override func saveInDB() {
		
		let write = CreateNotesInput(title: title, content: content)
		
		appSyncClient?.perform(mutation: CreateNotesMutation(input: write), resultHandler: { (result, error) in
			
			if let error = error {
				print(error.localizedDescription)
				return
			}
			
			if let _ = result {
				print("DataBase written successfully.")
			}
		})
	}
	
	override func retrieveFromDB(query: NSPredicate? = nil) -> [CDNote]? {
		
		let PLACEHOLDER : [CDNote]? = nil
		
		appSyncClient?.fetch(query: ListNotessQuery())
		
		return PLACEHOLDER
	}
}
