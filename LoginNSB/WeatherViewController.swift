//
//  ViewController.swift
//  LoginNSB
//
//  Created by ADELU ABIDEEN ADELEYE on 10/3/18.
//  Copyright © 2018 Spantom Technologies Ltd. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {
    var mainView: WeatherView! {
        return self.view as? WeatherView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green
    }
    
    override func loadView() {
        self.view = WeatherView(frame: UIScreen.main.bounds)
    }


}

class WeatherView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
        
    }
    
    private func setupConstraints() {
        
    }
    
    
    // MARK: - Views
    let backgroundView: UIView = {
        let view = UIView(frame: .zero)
        return view
    }()
    
    
}

