//
//  CollectionView+Child_Main.swift
//  AwesomeNote
//
//  Created by Scott Leonard on 3/31/20.
//  Copyright © 2020 DuhMarket. All rights reserved.
//

import UIKit

class CollectionView_Child_Main: UIViewController {
	
	@IBOutlet weak var collectionView: UICollectionView!
	
	var dataSource : UICollectionViewDiffableDataSource<Section,Notes>?
	
    override func viewDidLoad() {
        super.viewDidLoad()
		setupCollectionViewAesthetics()
		setupCellLayout()
		setDataSource()
		retrieveNotes()
    }
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		setSnapShot()
	}
	
	func retrieveNotes(){
		let retriever = Retriever(context: (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext)
		if let cdNotes = retriever?.retrieveFromCoreData() {
			
			cdNotes.forEach {
				let note = Notes(note: $0)
				notes.append(note)
			}
			print(notes)
		}
	}
	
	func setupCollectionViewAesthetics(){
		collectionView.layer.cornerRadius = 10
		collectionView.layer.shadowOpacity = 0.4
		collectionView.layer.shadowOffset = CGSize(width: 0, height: 5)
		collectionView.layer.shadowRadius = 5
	}
	
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
    
	func setDataSource() {
		
		dataSource = UICollectionViewDiffableDataSource<Section,Notes>(collectionView: collectionView, cellProvider: { (collectionView, indexPath, note) -> UICollectionViewCell? in
			let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "note", for: indexPath) as! ChildViewCell_CollectionViewCell
			cell.layer.cornerRadius = 10
			cell.backgroundColor = .white
			cell.content.text = note.note.content
			return cell
		})
	}
	
	func setSnapShot() {
		
		var snapshot = NSDiffableDataSourceSnapshot<Section,Notes>()
		snapshot.appendSections([.main])
		snapshot.appendItems(notes, toSection: .main)
		dataSource?.apply(snapshot, animatingDifferences: true, completion: {})
	}
}
