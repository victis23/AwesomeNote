//
//  Login.swift
//  AwesomeNote
//
//  Created by Scott Leonard on 4/1/20.
//  Copyright © 2020 DuhMarket. All rights reserved.
//

import SwiftUI

struct Login: View {
    var body: some View {
		
		NavigationView {
			NavigationLink(destination: MainView()
				.navigationBarBackButtonHidden(true)
				, label: {
				Text("Main")
			})
		}.navigationBarTitle("Login")
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
