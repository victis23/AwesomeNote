//
//  LoginHosting+ViewController.swift
//  AwesomeNote
//
//  Created by Scott Leonard on 4/1/20.
//  Copyright © 2020 DuhMarket. All rights reserved.
//

import SwiftUI

class LoginHosting : UIHostingController<Login> {
	
	///1. — Instantiate `Login`.
	@objc required dynamic init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder,
				   rootView: Login())
	}
	
	///2. — Called by `@objc required dynamic init?` to construct view.
	override init?(coder aDecoder: NSCoder, rootView: Login) {
		super.init(coder: aDecoder, rootView: rootView)
	}
	
}
