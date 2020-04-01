//
//  AWSHelper.swift
//  AwesomeNote
//
//  Created by Scott Leonard on 4/1/20.
//  Copyright © 2020 DuhMarket. All rights reserved.
//

import Foundation
import AWSMobileClient

class AWSHelper : ObservableObject {
	
	@Published var username: String?
	@Published var password: String?
	@Published var email: String?
	@Published var isSignedIn: Bool = false
	
	private var aws = AWSMobileClient.default()
	
	init(username:String?,password:String?){
		self.username = username
		self.password = password
	}
	
	
	///Initialized AWSMobile Singleton and verifies what the user's login state is.
	func initializeAWS() {
		aws.initialize { [weak self](signInStatus, error) in
			
			if let error = error {
				print(error.localizedDescription)
				return
			}
			guard let status = signInStatus else {return}
			
			switch status {
			case .signedOut:
				self?.performSignUp()
			case .signedIn:
				self?.isSignedIn = true
				print("Signed In")
			default:
				break
			}
			
		}
	}
	
	/// Is called if user is not signed in or if tokens have expired.
	func performSignUp(){
		print("Signed Out | Attempting sign-in!")
		
		guard let username = username, let password = password, let email = email else {return}
		
		aws.signUp(username: username, password: password, userAttributes: ["email":email]) { [weak self](result, error) in
		
			if let error = error {
				print(error.localizedDescription)
				return
			}
			
			guard let result = result else {return}
			self?.isSignedIn = true
			print("User is signed in with : \(result)")
		}
		
	}
}
