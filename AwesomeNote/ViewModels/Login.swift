//
//  Login.swift
//  AwesomeNote
//
//  Created by Scott Leonard on 4/1/20.
//  Copyright © 2020 DuhMarket. All rights reserved.
//

import SwiftUI
import Introspect
import EmailVerifier

/// Handles user authentication.
struct Login: View {
	
	@ObservedObject private var awsHelper : AWSHelper = AWSHelper(username: nil, password: nil)
	
	@State private var isPresenting : Bool = false
	@State private var isCreatingAccount :Bool = false
	@State private var isValidAccount :Bool = false
	@State private var isloggingIn :Bool = false
	
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
							
							QuestionTableView(username: $username, email: $email, password: $password, passwordConfirmation: $passwordConfirmation, isValidAccount: $isValidAccount, isCreatingAccount: $isCreatingAccount, helper: _awsHelper)
							
							CreateAccountButton(iscreatingAccount: $isCreatingAccount, isValidCredResetter: $isValidAccount)
							
							Spacer()
							
							
							SubmitButton(isPresenting: $isPresenting, imageName: "lock.icloud.fill", function: "Login", helper: _awsHelper, isNewAccount: $isCreatingAccount, username: $username, email: $email, password: $password, passwordConfirmation: $passwordConfirmation)
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
			//			self.awsHelper.logOut()
			if self.awsHelper.isSignedIn {
				self.isPresenting = self.awsHelper.isSignedIn
			}
			
			/// Add listener for changes in login status.
			self.awsHelper.aws.addUserStateListener(self as AnyObject) { (state, dictionary) in
				if state == .signedIn {
					self.isPresenting = true
				}
				if state == .signedOut {
					
				}
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
	
	@Binding private var username: String
	@Binding private var email : String
	@Binding private var password: String
	@Binding private var passwordConfirmation: String
	
	@Binding private var isPresenting : Bool
	@Binding private var isNewAccount : Bool
	@ObservedObject private var awsHelper : AWSHelper
	private var function : String
	private var imageName : String
	
	init(isPresenting: Binding<Bool>, imageName:String, function:String, helper:ObservedObject<AWSHelper>, isNewAccount: Binding<Bool>, username : Binding<String>, email: Binding<String>, password : Binding<String>, passwordConfirmation: Binding<String>){
		self._isPresenting = isPresenting
		self.function = function
		self.imageName = imageName
		self._awsHelper = helper
		self._isNewAccount = isNewAccount
		
		
		//Properties used to clear fields
		self._username = username
		self._email = email
		self._password = password
		self._passwordConfirmation = passwordConfirmation
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
					self.username = ""
					self.email = ""
					self.password = ""
					self.passwordConfirmation = ""
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
	
	@ObservedObject private var awsHelper : AWSHelper
	
	@Binding private var username : String
	@Binding private var email : String
	@Binding private var password : String
	@Binding private var passwordConfirmation : String
	
	@Binding private var isValidAccount: Bool
	@Binding private var isCreatingAccount: Bool
	
	init(username:Binding<String>, email: Binding<String>, password: Binding<String>, passwordConfirmation: Binding<String>, isValidAccount :Binding<Bool>,isCreatingAccount: Binding<Bool>, helper : ObservedObject<AWSHelper>){
		
		self._username = username
		self._email = email
		self._password = password
		self._passwordConfirmation = passwordConfirmation
		self._isValidAccount = isValidAccount
		self._awsHelper = helper
		self._isCreatingAccount = isCreatingAccount
	}
	
	var body: some View {
		Form {
			
			TextField("Username", text: $username, onEditingChanged: {_ in
				self.validateAccountCreds()
			}, onCommit: {
				self.validateAccountCreds()
			})
				.introspectTextField(customize: {field in
					self.setFieldAesthetics(with: field, label: "Username")
				})
				.padding()
			
			if isCreatingAccount {
				TextField("Email", text: $email, onEditingChanged: {_ in
					self.validateAccountCreds()
				}, onCommit: {
					self.validateAccountCreds()
				})
					.introspectTextField(customize: {field in
						self.setFieldAesthetics(with: field, label: "Email")
					})
					.padding()
			}
			
			SecureField("Password", text: $password, onCommit: {
				self.validateAccountCreds()
			})
				.introspectTextField(customize: {field in
					self.setFieldAesthetics(with: field, label: "Password")
				})
				.padding()
			
			if isCreatingAccount {
				
				SecureField("Password Confirmation", text: $passwordConfirmation, onCommit: {
					self.validateAccountCreds()
				})
					//Does the same thing as cell.backgroundColor below except that it can apply the change to cells as the appear.
					.listRowBackground(Color.white)
					.introspectTextField(customize: {field in
						self.setFieldAesthetics(with: field, label: "Password Confirmation")
					})
					.padding()
			}
			
		}
		.font(Font.largeTitle)
		.foregroundColor(Color(UIColor(red: 0.3, green: 0.4, blue: 0.8, alpha: 0.8)))
		.introspectTableView(customize: { item in
			item.backgroundColor = .white
			item.separatorColor = .clear
			item.visibleCells.forEach { cell in cell.backgroundColor = .white}
		})
			.frame(height: isCreatingAccount ? 400 : 225, alignment: .center)
			.animation(Animation.easeIn(duration: 1))
			.textFieldStyle(RoundedBorderTextFieldStyle())
	}
	
	///SwiftUI has limited customizability on textfield elements, thus this method will be called to customize fields using introspectAPI.
	func setFieldAesthetics(with field:UITextField, label:String){
		field.backgroundColor = .white
		field.layer.borderWidth = 1
		field.layer.cornerRadius = 5
		field.layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1).cgColor
		field.attributedPlaceholder = NSAttributedString(string: label, attributes: [
			NSAttributedString.Key.foregroundColor : UIColor(red: 0, green: 0, blue: 0, alpha: 0.2),
			NSAttributedString.Key.font : UIFont.systemFont(ofSize: 30, weight: .ultraLight)
		])
	}
	
	func validateAccountCreds(){
		
		if self.isCreatingAccount {
			if self.password == self.passwordConfirmation && self.email.isValidEmail && self.username != "" && self.password != "" {
				
				self.awsHelper.username = self.username
				self.awsHelper.email = self.email.lowercased()
				self.awsHelper.password = self.password
				self.isValidAccount = true
			}else{
				self.isValidAccount = false
			}
		}
		
		if !self.isCreatingAccount {
			if self.username != "" && self.password != "" {
				
				self.awsHelper.username = self.username
				self.awsHelper.password = self.password
				self.isValidAccount = true
			}else{
				self.isValidAccount = false
			}
		}
	}
}

struct CreateAccountButton: View {
	
	@Binding private var isCreatingAccount :Bool
	@Binding private var isValidCredResetter : Bool
	
	init(iscreatingAccount:Binding<Bool>, isValidCredResetter : Binding<Bool>){
		self._isCreatingAccount = iscreatingAccount
		self._isValidCredResetter = isValidCredResetter
	}
	
	var body: some View {
		Button(action: {
			withAnimation(Animation.easeIn(duration: 0.5), {
				
				//If the user actually needs to create an account after they tried using a signin. Validation needs to be reset.
				if !self.isCreatingAccount {
					self.isValidCredResetter = false
				}
				
				self.isCreatingAccount.toggle()
			})
		}, label: {
			HStack{
				Spacer()
				Text("Create Account")
					.bold()
				Image(systemName:"person.crop.circle.fill.badge.plus")
			}
			.foregroundColor(Color(UIColor(red: 0.3, green: 0.4, blue: 0.8, alpha: 1)))
			.font(Font.system(.title))
			.padding(.trailing)
		})
	}
}
