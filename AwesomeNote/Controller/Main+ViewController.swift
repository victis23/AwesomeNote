//
//  Main+ViewController.swift
//  AwesomeNote
//
//  Created by Scott Leonard on 3/31/20.
//  Copyright © 2020 DuhMarket. All rights reserved.
//

import UIKit

class Main_ViewController: UIViewController {
	
	@IBOutlet weak var background : UIView!
	@IBOutlet weak var editButton : UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
		setBackground()
		setEditButtonColor()
    }
	
	func setBackground(){
		
		let gradient = CAGradientLayer()
		gradient.type = .axial
		
		//Bottom | Top
		gradient.colors = [UIColor(red: 0.3, green: 0.4, blue: 0.8, alpha: 0.9).cgColor,UIColor(red: 0.3, green: 0.2, blue: 0.8, alpha: 1).cgColor]
		gradient.startPoint = CGPoint(x: 0, y: 1)
		gradient.endPoint = CGPoint(x: 0, y: 0.5)
		gradient.frame = background.bounds
		background.layer.addSublayer(gradient)
	}
	

    

    

}
