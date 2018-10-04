//
//  SignupController.swift
//  LoginNSB
//
//  Created by ADELU ABIDEEN ADELEYE on 10/4/18.
//  Copyright © 2018 Spantom Technologies Ltd. All rights reserved.
//

import UIKit

class SignupController: UIViewController {
    
    let haveAccountButton: UIButton = {
        let color = UIColor.rgb(r: 89, g: 156, b: 120)
        let font = UIFont.systemFont(ofSize: 16)
        
        let button = UIButton(type: .system)
        button.backgroundColor = GREEN_THEME
        let attributedTitle = NSMutableAttributedString(string: "Already have an account?", attributes: [NSAttributedString.Key.foregroundColor: color, NSAttributedString.Key.font: font])
        
        attributedTitle.append(NSAttributedString(string: "Sign In", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font: font]))
        
        button.addTarget(self, action: #selector(signInAction), for: .touchUpInside)
        
        button.setAttributedTitle(attributedTitle, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = GREEN_THEME
        
        setupHaveAccountButton()
    }
    
    @objc func signInAction() {
        navigationController?.popViewController(animated: true)
    }
    
    private func setupHaveAccountButton() {
        view.addSubview(haveAccountButton)
        
        haveAccountButton.anchors(top: nil, topPad: 0, bottom: view.safeAreaLayoutGuide.bottomAnchor, bottomPad: 8, left: view.leftAnchor, leftPad: 0, right: view.rightAnchor, rightPad: 0, height: 20, width: 0)
    }
}
