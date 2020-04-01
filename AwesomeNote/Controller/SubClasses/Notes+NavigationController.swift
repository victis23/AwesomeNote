//
//  Notes+NavigationController.swift
//  AwesomeNote
//
//  Created by Scott Leonard on 4/1/20.
//  Copyright © 2020 DuhMarket. All rights reserved.
//

import UIKit

class Notes_NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
		setNeedsStatusBarAppearanceUpdate()
		
		viewControllers.forEach { vc in
			vc.modalPresentationCapturesStatusBarAppearance = true
			vc.setNeedsStatusBarAppearanceUpdate()
		}
    }
    
	override var preferredStatusBarStyle: UIStatusBarStyle {
		.darkContent
	}
}
