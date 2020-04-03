//
//  Retriever+CoreData.swift
//  AwesomeNote
//
//  Created by Scott Leonard on 3/30/20.
//  Copyright © 2020 DuhMarket. All rights reserved.
//

import Foundation
import CoreData

/// Helps controller perform CRUD on persistent container.
class Retriever {
	
	private var context : NSManagedObjectContext
	
	init?(context:NSManagedObjectContext){
		self.context = context
	}
	
	///Returns array of CDNote Objects from Persistent Container.
	public func retrieveFromCoreData(query : NSPredicate? = nil) -> [CDNote]?{
		
		let _fetchRequest = NSFetchRequest<CDNote>(entityName: "CDNote")
		
		if query != nil {
			_fetchRequest.predicate = query
		}
		
		
		let _notes = try? context.fetch(_fetchRequest)
		
		return _notes
	}
	
	/// Updates Persistent Container.
	public func saveInDB(){
		do {
			try context.save()
		}
		catch(let e) {
			print(e.localizedDescription)
		}
	}
	
	/// Instance removes an object from the persistent container and saves the context.
	public func remove(object: Any){
		
		guard let _coredataObject = object as? NSManagedObject else {return}
		
		context.delete(_coredataObject)
		self.saveInDB()
		
	}
	
	/// Instance method swaps to coredata objects index property which will affect how they are sorted upon retrieval.
	public func swap(_ object: Any, with object2: Any){
		guard let object1 = object as? NSManagedObject,
			let object2 = object2 as? NSManagedObject,
			let note1 = object1 as? CDNote,
			let note2 = object2 as? CDNote else {return}
		
		let tempIndex = note1.index
		note1.index = note2.index
		note2.index = tempIndex
		self.saveInDB()
	}
}
