//
//  UIKitWrapperToMain.swift
//  AwesomeNote
//
//  Created by Scott Leonard on 4/1/20.
//  Copyright © 2020 DuhMarket. All rights reserved.
//

import SwiftUI

/// Wraps UIKIT instance in a representable that swiftUI can present.
struct MainView: UIViewControllerRepresentable {
	
	//Specify what type of controller is being wrapped in an associated type.
	typealias UIViewControllerType = UIViewController

	//Determines which viewcontroller will be presented to user. This string corresponds to the name of the storyboard file in the main bundle.
	private var storyboardPointer : String = "Slides"
	
	func makeUIViewController(context: Context) -> UIViewControllerType {
		
		//Find user defined storyboard in bundle using name.
		let storyboard = UIStoryboard(name: storyboardPointer, bundle: .main)

		guard let viewController = storyboard.instantiateInitialViewController() as? Main_ViewController else { fatalError() }
		return viewController
	}
	
	func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
		
	}
}
