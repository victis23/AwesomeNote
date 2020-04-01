//
//  Notes+TabBarController.swift
//  AwesomeNote
//
//  Created by Scott Leonard on 4/1/20.
//  Copyright © 2020 DuhMarket. All rights reserved.
//

import UIKit

class Notes_TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
	override var preferredStatusBarStyle: UIStatusBarStyle {
		.darkContent
	}
	
	override var childForStatusBarStyle: UIViewController? {
		
		guard let vcList = viewControllers else {fatalError()}
		
		let vc = vcList[0]
		print("TabView \(vcList)")
		return vc
	}

}
