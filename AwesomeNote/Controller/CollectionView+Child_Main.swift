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
	
    override func viewDidLoad() {
        super.viewDidLoad()
		collectionView.layer.cornerRadius = 10
//		collectionView.backgroundColor = .clear
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
