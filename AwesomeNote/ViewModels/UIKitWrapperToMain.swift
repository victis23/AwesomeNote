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
	
	@Environment(\.presentationMode) var mode
	
	//Find user defined storyboard in bundle using name.
	var viewController = UIStoryboard(name: "Slides", bundle: .main).instantiateInitialViewController() as? Main_ViewController
	
	//Specify what type of controller is being wrapped in an associated type.
	typealias UIViewControllerType = UIViewController

	func makeUIViewController(context: Context) -> UIViewControllerType {
		guard let viewController = viewController else {fatalError()}
		viewController.presenting = mode
		return viewController
	}
	
	func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
		
	}
}
