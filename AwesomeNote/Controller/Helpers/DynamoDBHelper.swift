//
//  DynamoDBHelper.swift
//  AwesomeNote
//
//  Created by Scott Leonard on 4/3/20.
//  Copyright © 2020 DuhMarket. All rights reserved.
//

import Foundation
import AWSAppSync
import AWSMobileClient


///Class used to retrieve and write to AWS DynamoDB — Class is subclass of Retriever.
class DynamoDBHelper : Retriever {
	
	//AppSync Client used to perform CRUD.
	var appSyncClient = (UIApplication.shared.delegate as! AppDelegate).appSyncClientBridge
	
	var note : CDNote
	
	init?(note:CDNote){
		self.note = note
		super.init(context: (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext)
	}
	
	override public func remove(object:Any){
		
	}
	
	override func saveInDB() {
		
		if let title = note.title, let content = note.content {
			let write = CreateNotesInput(title: title, content: content, index: Int(note.index))
			
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
	}
	
	//FIXME: Not retrieving properly from database
	
	///Retrieves notes from DynamoDB 
	func retrieveFromDB(query: NSPredicate? = nil, completion: @escaping (([String]) -> Void)){
		
		
		appSyncClient?.fetch(query: ListNotessQuery(limit: 10), cachePolicy: .fetchIgnoringCacheData, queue: .global(qos: .background), resultHandler: { (result, error) in
			
			if let error = error as? AWSAppSyncClientError {
				print("Query Failed with error: \(error)")
			}
			
			
			guard let result = result, let returnValue = result.data?.listNotess?.items else {return}
			
			var notes : [String] = []
			
			returnValue.forEach { value in
				if let value = value{
				let note = value.content
					notes.append(note)
				}
			}
			
			completion(notes)
		})
	}
	
	func modifyExistingDBEntry(){
		
		guard let optionalUserName : NSString = AWSMobileClient.default().username as NSString? else {return}
		let username = optionalUserName
	
		appSyncClient?.perform(mutation: UpdateNotesMutation(input: UpdateNotesInput(title: note.title, content: note.content, id: GraphQLID(username), index: Int(note.index))), queue: .main, resultHandler: { (result, error) in
			
			if let error = error{
				print(error.localizedDescription)
				return
			}
			
			if let result = result {
				print("The DB has been updated successfully with result : \(result).")
			}
		})
	}
}
