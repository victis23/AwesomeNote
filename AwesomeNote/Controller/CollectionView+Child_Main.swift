//
//  CollectionView+Child_Main.swift
//  AwesomeNote
//
//  Created by Scott Leonard on 3/31/20.
//  Copyright © 2020 DuhMarket. All rights reserved.
//

import UIKit

class CollectionView_Child_Main: UIViewController {
	
	//MARK: -
	
	@IBOutlet weak var collectionView: UICollectionView!
	@IBOutlet weak var buttonStack: UIStackView!
	
	/// Instance of helper class that is used for managing core data objects.
	let retriever = Retriever(context: (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext)
	
	var notes : [Notes] = [] {
		didSet {
			notes.sort {$0.note.index < $1.note.index}
		}
	}
	
	var dataSource : UICollectionViewDiffableDataSource<Section,Notes>?
	
    override func viewDidLoad() {
        super.viewDidLoad()
		self.collectionView.delegate = self
		setupCollectionViewAesthetics()
		setupCellLayout()
		setDataSource()
    }
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		retrieveNotes()
		setSnapShot()
	}
	
	//FIXME: Coredata returns an empty object when user cancels a note before saving. Fix in post.
	/// Transforms coredata objects into `Notes` and appends each to `notes` array.
	func retrieveNotes(){
		
		notes = []
		if let cdNotes = retriever?.retrieveFromDB() {
			
			cdNotes.forEach {
				let note = Notes(note: $0)
				
				//Sometimes coredata returns an empty object. This will need to be fixed if app is to move into production. For now this is the temporary work around.
				if $0.index == 0 {
					retriever?.remove(object: $0)
				}else{
					notes.append(note)
				}
			}
		}
	}
	
	/// Hides or Reveals button stack with animation.
	func animateButtonStack(hide:Bool){
		if hide {
			UIView.animate(withDuration: 2, animations: {
				self.buttonStack.alpha = 0
			})
		}else{
			UIView.animate(withDuration: 2, animations: {
				self.buttonStack.alpha = 1
			})
		}
	}
	
	/// Sets general aesthetic of collection view.
	func setupCollectionViewAesthetics(){
		
		collectionView.layer.cornerRadius = 10
		collectionView.layer.shadowOpacity = 0.4
		collectionView.layer.shadowOffset = CGSize(width: 5, height: 1)
		collectionView.layer.shadowRadius = 5
	}
	
	/// Sets layout of collection view using compositional layout.
	func setupCellLayout(){
		
		let cellSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
		let cell = NSCollectionLayoutItem(layoutSize: cellSize)
		cell.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 20)
		
		let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
		let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: cell, count: 1)
		
		let section = NSCollectionLayoutSection(group: group)
		section.orthogonalScrollingBehavior = .continuous
		
		let layout = UICollectionViewCompositionalLayout(section: section)
		
		self.collectionView.collectionViewLayout = layout
	}
    
	///Sets up datasource used by collection view.
	func setDataSource() {
		
		dataSource = UICollectionViewDiffableDataSource<Section,Notes>(collectionView: collectionView, cellProvider: { (collectionView, indexPath, note) -> UICollectionViewCell? in
			let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "note", for: indexPath) as! ChildViewCell_CollectionViewCell
			cell.layer.cornerRadius = 10
			cell.backgroundColor = .white
			cell.content.text = note.note.content
			return cell
		})
	}
	
	///Sets up snapshot (Source of truth) for collection view.
	func setSnapShot() {
		
		var snapshot = NSDiffableDataSourceSnapshot<Section,Notes>()
		snapshot.appendSections([.main])
		snapshot.appendItems(notes, toSection: .main)
		dataSource?.apply(snapshot, animatingDifferences: true, completion: { [weak self] in
			if let notes = self?.notes {
				self?.animateButtonStack(hide: notes.isEmpty)
			}
		})
	}
	
	/// Removes object from Array & Coredata stack.
	@IBAction func deletebuttonTapped(_ sender: UIButton) {
		
		if let visibleItems = collectionView.indexPathsForVisibleItems.first {
			let objectAtIndex = dataSource?.itemIdentifier(for: visibleItems)
			notes.remove(at: visibleItems.item)
			setSnapShot()
			
			if let object = objectAtIndex?.note {
				retriever?.remove(object: object)
			}
		}
	}
	
	@IBAction func editButtonTapped(_ sender: Any) {
	}
	@IBAction func shareButtonTapped(_ sender: Any) {
	}
	@IBAction func locationButton(_ sender: Any) {
	}
	
	
}

extension CollectionView_Child_Main : UICollectionViewDelegate {
	
	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		print("tap \(indexPath)")
	}
}
