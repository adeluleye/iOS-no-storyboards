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
        button.backgroundColor = UIColor.rgb(r: 89, g: 156, b: 120)
        
        return button
    }()
    
    let forgotPassword: UIButton = {
        let button = UIButton(type: .system)
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Forgot Password?", for: .normal)
        button.backgroundColor = GREEN_THEME
        return button
    }()
    
    let haveAccountButton: UIButton = {
        let color = UIColor.rgb(r: 89, g: 156, b: 120)
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
        
        emailTextField.anchors(top: nil, topPad: 0,
                               bottom: nil, bottomPad: 0,
                               left: view.leftAnchor, leftPad: 24,
                               right: view.rightAnchor, rightPad: 24,
                               height: 30,
                               width: 0)
        
        emailTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    private func setupPasswordField() {
        view.addSubview(passwordTextField)
        
        passwordTextField.anchors(top: emailTextField.bottomAnchor, topPad: 8, bottom: nil, bottomPad: 0, left: emailTextField.leftAnchor, leftPad: 0, right: emailTextField.rightAnchor, rightPad: 0, height: 30, width: 0)
        
    }
    
    private func setupLoginButton() {
        view.addSubview(loginButton)
        
        loginButton.anchors(top: passwordTextField.bottomAnchor, topPad: 8, bottom: nil, bottomPad: 0, left: passwordTextField.leftAnchor, leftPad: 0, right: passwordTextField.rightAnchor, rightPad: 0, height: 50, width: 0)
        
    }
    
    private func setupForgotPasswordButton() {
        view.addSubview(forgotPassword)
        
        forgotPassword.anchors(top: loginButton.bottomAnchor, topPad: 8, bottom: nil, bottomPad: 0, left: loginButton.leftAnchor, leftPad: 0, right: loginButton.rightAnchor, rightPad: 0, height: 30, width: 0)
        
    }
    
    private func setupHaveAccountButton() {
        view.addSubview(haveAccountButton)
        
        haveAccountButton.anchors(top: nil, topPad: 0, bottom: view.safeAreaLayoutGuide.bottomAnchor, bottomPad: 8, left: view.leftAnchor, leftPad: 12, right: view.rightAnchor, rightPad: 12, height: 30, width: 0)
        
    }
    
}
