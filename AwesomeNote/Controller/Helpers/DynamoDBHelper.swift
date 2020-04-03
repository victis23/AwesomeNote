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
	private var appSyncClient = (UIApplication.shared.delegate as! AppDelegate).appSyncClientBridge
	
	override public func remove(object:Any){
		
	}
	
	override func saveInDB() {
		
	}
	
	override func retrieveFromDB(query: NSPredicate? = nil) -> [CDNote]? {
		
		let PLACEHOLDER : [CDNote]? = nil
		
		return PLACEHOLDER
	}
}
