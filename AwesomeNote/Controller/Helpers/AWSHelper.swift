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
	@Published var isSignedIn: Bool = false
	
	init(username:String?,password:String?){
		self.username = username
		self.password = password
	}
	
	
	///Initialized AWSMobile Singleton and verifies what the user's login state is.
	func initializeAWS() {
		AWSMobileClient.default().initialize { [weak self](signInStatus, error) in
			
			if let error = error {
				print(error.localizedDescription)
				return
			}
			guard let status = signInStatus else {return}
			
			switch status {
			case .signedOut:
				self?.performSignIn()
			case .signedIn:
				self?.isSignedIn = true
				print("Signed In")
			default:
				break
			}
			
		}
	}
	
	/// Is called if user is not signed in or if tokens have expired.
	func performSignIn(){
		print("Signed Out | Attempting sign-in!")
	}
}
