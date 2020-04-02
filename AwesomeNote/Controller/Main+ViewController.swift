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
	@IBOutlet weak var logoutButton: UIButton!
	@IBOutlet weak var childView: UIView!
	
	let awsHelper = AWSHelper(username: nil, password: nil)
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setBackground()
		setEditButtonColor()
		childView.backgroundColor = .clear
		childView.layer.cornerRadius = 10
//		self.navigationController?.navigationBar.isHidden = true
	}
	
	//Set status bar to white.
	override var preferredStatusBarStyle: UIStatusBarStyle {
		.lightContent
	}
	
	///Sets background on childview to gradient.
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
	
	///Sets SF Pro Symbol to label of button.
	func setEditButtonColor(){
		
		let sliderButton = UIImage(systemName: "slider.horizontal.3")
		let exitButton = UIImage(systemName: "clear.fill")
		
		let buttons = [editButton,logoutButton]
		
		buttons.forEach { bttn in
			guard let bttn = bttn else {return}
			bttn.setTitle("", for: .normal)
			bttn.tintColor = .white
			bttn.contentVerticalAlignment = .fill
			bttn.contentHorizontalAlignment = .fill
		}
		
		editButton.bounds = CGRect(origin: view.center, size: CGSize(width: 70, height: 50))
		logoutButton.bounds = CGRect(origin: view.center, size: CGSize(width: 60, height: 50))
		
		editButton.setImage(sliderButton, for: .normal)
		logoutButton.setImage(exitButton, for: .normal)
	}
	
	@IBAction func logoutButton(_ sender: UIButton) {
		awsHelper.logOut()
		self.dismiss(animated: true, completion: {})
	}
	
	
}
