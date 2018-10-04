//
//  LoginViewController.swift
//  LoginNSB
//
//  Created by ADELU ABIDEEN ADELEYE on 10/4/18.
//  Copyright © 2018 Spantom Technologies Ltd. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        
        let attributedPlaceholder = NSAttributedString(string: "email", attributes: [NSMutableAttributedString.Key.foregroundColor : UIColor.white])
        
        textField.attributedPlaceholder = attributedPlaceholder
        
        textField.backgroundColor = GREEN_THEME
        
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        
        let attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        textField.attributedPlaceholder = attributedPlaceholder
        
        textField.backgroundColor = GREEN_THEME
        
        return textField
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Log In", for: .normal)
        button.backgroundColor = .purple
        
        return button
    }()
    
    let forgotPassword: UIButton = {
        let button = UIButton(type: .system)
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Forgot Password?", for: .normal)
        button.backgroundColor = .red
        return button
    }()
    
    let haveAccountButton: UIButton = {
        let color = UIColor(red: 89/255, green: 156/255, blue: 120/255, alpha: 1)
        let font = UIFont.systemFont(ofSize: 16)
        
        let button = UIButton(type: .system)
        button.backgroundColor = GREEN_THEME
        let attributedTitle = NSMutableAttributedString(string: "Don't have an account?", attributes: [NSAttributedString.Key.foregroundColor: color, NSAttributedString.Key.font: font])
        
        attributedTitle.append(NSAttributedString(string: "Sign Up", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font: font]))
        
        button.setAttributedTitle(attributedTitle, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = GREEN_THEME
        
        setupTextFieldComponents()
        setupLoginButton()
        setupForgotPasswordButton()
        setupHaveAccountButton()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    private func setupTextFieldComponents() {
        setupEmailField()
        setupPasswordField()
    }
    
    private func setupEmailField() {
        view.addSubview(emailTextField)
        
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        
        emailTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        emailTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        emailTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    private func setupPasswordField() {
        view.addSubview(passwordTextField)
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 8).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    private func setupLoginButton() {
        view.addSubview(loginButton)
        
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 8).isActive = true
        loginButton.leftAnchor.constraint(equalTo: passwordTextField.leftAnchor, constant: 0).isActive = true
        loginButton.rightAnchor.constraint(equalTo: passwordTextField.rightAnchor, constant: 0).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    private func setupForgotPasswordButton() {
        view.addSubview(forgotPassword)
        
        forgotPassword.translatesAutoresizingMaskIntoConstraints = false
        forgotPassword.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 8).isActive = true
        forgotPassword.leftAnchor.constraint(equalTo: loginButton.leftAnchor, constant: 0).isActive = true
        forgotPassword.rightAnchor.constraint(equalTo: loginButton.rightAnchor, constant: 0).isActive = true
        forgotPassword.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
    }
    
    private func setupHaveAccountButton() {
        view.addSubview(haveAccountButton)
        
        haveAccountButton.translatesAutoresizingMaskIntoConstraints = false
        haveAccountButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
        haveAccountButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 12).isActive = true
        haveAccountButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -12).isActive = true
        haveAccountButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
}
