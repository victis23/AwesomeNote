//
//  Retriever+CoreData.swift
//  AwesomeNote
//
//  Created by Scott Leonard on 3/30/20.
//  Copyright © 2020 DuhMarket. All rights reserved.
//

import Foundation
import CoreData

class Retriever {
	
	private var context : NSManagedObjectContext
	
	init?(context:NSManagedObjectContext){
		self.context = context
	}
	
	//Returns array of CDNote Objects from Persistent Container.
	public func retrieveFromCoreData(query : NSPredicate? = nil) -> [CDNote]?{
		
		let _fetchRequest = NSFetchRequest<CDNote>(entityName: "CDNote")
		
		if query != nil {
			_fetchRequest.predicate = query
		}
		
		
		let _notes = try? context.fetch(_fetchRequest)
		
		return _notes
	}
	
	//Updates Persistent Container.
	public func saveInCoreData(){
		do {
			try context.save()
		}
		catch(let e) {
			print(e.localizedDescription)
		}
	}
	
	public func remove(object: Any){
		
		guard let _coredataObject = object as? NSManagedObject else {return}
		
		context.delete(_coredataObject)
		self.saveInCoreData()
		
	}
	
//	public func swap(_ object: Any, with object2: Any){
//		guard let object1 = object as? NSManagedObject,
//			let object2 = object2 as? NSManagedObject else {return}
//
//	}
}
