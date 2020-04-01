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
	
	@ObservedObject private var awsHelper : AWSHelper = AWSHelper(username: nil, password: nil)
	
	@State private var isPresenting : Bool = false
	@State private var isCreatingAccount :Bool = false
	
	@State private var username: String = ""
	@State private var email : String = ""
	@State private var password: String = ""
	@State private var passwordConfirmation: String = ""
	
	
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
							SubmitButton(isPresenting: $isCreatingAccount, imageName: "person.crop.circle.fill.badge.plus", function: "Create Account")
							SubmitButton(isPresenting: $isPresenting, imageName: "lock.icloud.fill", function: "Login")
								.padding(.bottom, 100)
						}
					}
				}
				.edgesIgnoringSafeArea(.all)
			}
		}
		.statusBar(hidden: true)
		.edgesIgnoringSafeArea(.all)
		.onAppear(perform: {
			
			//Checks to see if user is already signed into AWS. If this is true application proceeds to content.
			self.awsHelper.initializeAWS()
			if self.awsHelper.isSignedIn {
				self.isPresenting = self.awsHelper.isSignedIn
			}
		})
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
	private var function : String
	private var imageName : String
	
	init(isPresenting: Binding<Bool>, imageName:String, function:String){
		self._isPresenting = isPresenting
		self.function = function
		self.imageName = imageName
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
							Text(function)
								.fontWeight(.bold)
							Image(systemName: imageName)
						}
						.font(.system(size: 40))
						.foregroundColor(Color(UIColor(red: 0.3, green: 0.4, blue: 0.8, alpha: 1)))
					}
				}
			}
		}
	}
}

struct ApplicationTitleHeader: View {
	var body: some View {
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
	}
}
