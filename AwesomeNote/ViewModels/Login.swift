//
//  Login.swift
//  AwesomeNote
//
//  Created by Scott Leonard on 4/1/20.
//  Copyright © 2020 DuhMarket. All rights reserved.
//

import SwiftUI
import Introspect

/// Handles user authentication.
struct Login: View {
	
	@State var isPresenting : Bool = false
	
	var body: some View {
		
		NavigationView {
			VStack{
				ZStack{
					Color.white
					VStack{
						VStack{
							HStack{
								Group{
									Image(systemName: "rectangle.and.paperclip")
										.font(Font.system(size: 50))
									Text("Awesome Note")
										.font(Font.system(size: 40))
										.fontWeight(.thin)
								}
								.padding(.top, 100)
								.foregroundColor(.black)
							}
							Spacer()
							SubmitButton(isPresenting: $isPresenting)
								.padding(.bottom, 100)
						}
					}
				}
				.edgesIgnoringSafeArea(.all)
			}
		}
		.statusBar(hidden: true)
		.edgesIgnoringSafeArea(.all)
	}
}

struct Login_Previews: PreviewProvider {
	static var previews: some View {
		Login()
	}
}

/// Controls user authorization.
struct SubmitButton: View {
	
	@Binding private var isPresenting : Bool
	
	init(isPresenting: Binding<Bool>){
		self._isPresenting = isPresenting
	}
	
	var body: some View {
		Group {
			NavigationLink(destination: MainView()
				
				//SwiftUI shifts the view's position when we remove the navigation controller from the view.
				//This calculation places it back into its proper position.
				.position(CGPoint(x: UIScreen.location.maxX / 2, y: UIScreen.location.maxY / 1.687))
				.edgesIgnoringSafeArea(.all)
				.introspectViewController(customize: {_ in})
				
			,isActive: $isPresenting) {
				Button(action: {
					self.isPresenting.toggle()
				}) {
					HStack{
						Group{
							Text("Login")
								.fontWeight(.bold)
							Image(systemName: "lock.icloud.fill")
						}
						.font(.system(size: 40))
					}
					
				}
			}
		}
	}
}
