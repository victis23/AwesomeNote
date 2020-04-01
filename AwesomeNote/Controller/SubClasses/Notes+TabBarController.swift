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
		
		setNeedsStatusBarAppearanceUpdate()

		if let vcList = viewControllers{
			vcList.forEach { vc in
				vc.modalPresentationCapturesStatusBarAppearance = true
				vc.setNeedsStatusBarAppearanceUpdate()
			}
		}
    }
    
	override var preferredStatusBarStyle: UIStatusBarStyle {
		.darkContent
	}
}
