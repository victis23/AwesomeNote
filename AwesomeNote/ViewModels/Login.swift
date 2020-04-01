//
//  Login.swift
//  AwesomeNote
//
//  Created by Scott Leonard on 4/1/20.
//  Copyright © 2020 DuhMarket. All rights reserved.
//

import SwiftUI
import Introspect

struct Login: View {
	
	@State var isPresenting : Bool = false
	
	var body: some View {
		
		NavigationView {
			NavigationLink(destination: MainView()
				
				//SwiftUI shifts the view's position when we remove the navigation controller from the view.
				//This calculation places it back into its proper position.
				.position(CGPoint(x: UIScreen.location.maxX / 2, y: UIScreen.location.maxY / 1.687))
				.edgesIgnoringSafeArea(.all)
				
						   ,isActive: $isPresenting) {
				Button(action: {self.isPresenting.toggle()}) {
					Text("Access List")
				}
			}
		}.statusBar(hidden: true)
			.edgesIgnoringSafeArea(.all)
	}
}
	
	struct Login_Previews: PreviewProvider {
		static var previews: some View {
			Login()
		}
}

extension UIScreen {
	
	static let screenWidth = UIScreen.main.bounds.size.width
	static let screenHeight = UIScreen.main.bounds.size.height
	static let screenSize = UIScreen.main.bounds.size
	static let location = UIScreen.main.bounds
}
