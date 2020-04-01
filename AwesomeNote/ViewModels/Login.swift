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
	@State private var isValidAccount :Bool = false
	
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
							ApplicationTitleHeader()
							
							QuestionTableView(username: $username, email: $email, password: $password, passwordConfirmation: $passwordConfirmation, isCreatingAccount: $isCreatingAccount)
							
							CreateAccountButton(iscreatingAccount: $isCreatingAccount)
							
							Spacer()
							
							SubmitButton(isPresenting: $isPresenting, imageName: "lock.icloud.fill", function: "Login", helper: _awsHelper)
								.padding(.bottom, 100)
								.disabled(isValidAccount ? false : true)
								.opacity(isValidAccount ? 1 : 0.2)
								.animation(Animation.easeIn(duration: 1))
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
	@ObservedObject private var awsHelper : AWSHelper
	private var function : String
	private var imageName : String
	
	init(isPresenting: Binding<Bool>, imageName:String, function:String, helper:ObservedObject<AWSHelper>){
		self._isPresenting = isPresenting
		self.function = function
		self.imageName = imageName
		self._awsHelper = helper
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
					
					if self.isNewAccount {
						//Runs method on helper class using newly inputed credentials.
						self.awsHelper.performSignUp()
					}else{
						self.awsHelper.performLogin()
					}
					
					//If login is successful value is updated to true and user is given access to data.
					self.isPresenting = self.awsHelper.isSignedIn
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

struct QuestionTableView: View {
	
	@Binding private var username : String
	@Binding private var email : String
	@Binding private var password : String
	@Binding private var passwordConfirmation : String
	
	@Binding private var isCreatingAccount: Bool
	
	init(username:Binding<String>, email: Binding<String>, password: Binding<String>, passwordConfirmation: Binding<String>, isCreatingAccount :Binding<Bool>){
		
		self._username = username
		self._email = email
		self._password = password
		self._passwordConfirmation = passwordConfirmation
		self._isCreatingAccount = isCreatingAccount
	}
	
	var body: some View {
		Form {
			TextField("UserName", text: $username, onCommit: {})
				.padding()
			TextField("Email", text: $email, onEditingChanged: {_ in}, onCommit: {})
				.padding()
			TextField("Password", text: $password, onCommit: {})
				.padding()
			
			//								if isCreatingAccount {
			TextField("Password Confirmation", text: $passwordConfirmation, onEditingChanged: {_ in}, onCommit: {})
				.padding()
				.opacity(isCreatingAccount ? 1 : 0)
				.animation(Animation.easeIn(duration: 1))
			//								}
			
		}
		.font(Font.largeTitle)
		.foregroundColor(Color(UIColor(red: 0.3, green: 0.4, blue: 0.8, alpha: 0.8)))
		.introspectTableView(customize: { item in
			item.backgroundColor = .white
		})
			.frame(height: 375, alignment: .center)
	}
	
	func validateAccountCreds(){
		
		if self.isCreatingAccount {
			if self.password == self.passwordConfirmation && self.email.isValidEmail && self.username != "" && self.password != "" {
				
				self.awsHelper.username = self.username
				self.awsHelper.email = self.email
				self.awsHelper.password = self.password
				self.isValidAccount = true
			}
		}
		
		if !self.isCreatingAccount {
			if self.email.isValidEmail && self.username != "" && self.password != "" {
				
				self.awsHelper.username = self.username
				self.awsHelper.email = self.email
				self.awsHelper.password = self.password
				self.isValidAccount = true
			}
		}
	}
}

struct CreateAccountButton: View {
	
	@Binding private var isCreatingAccount :Bool
	
	init(iscreatingAccount:Binding<Bool>){
		self._isCreatingAccount = iscreatingAccount
	}
	
	var body: some View {
		Button(action: {
			self.isCreatingAccount.toggle()
		}, label: {
			HStack{
				Spacer()
				Text("Create Account")
					.bold()
				Image(systemName:"person.crop.circle.fill.badge.plus")
			}
			.foregroundColor(Color(UIColor(red: 0.3, green: 0.4, blue: 0.8, alpha: 1)))
			.font(Font.system(.title))
			.padding()
		})
	}
}
