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
    }
    
    override func loadView() {
        self.view = WeatherView(frame: UIScreen.main.bounds)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        
        super.viewWillTransition(to: size, with: coordinator)
        let isLandscape = size.width > size.height
        
        if isLandscape {
            mainView.centerContentStack.axis = .horizontal
        } else {
            mainView.centerContentStack.axis = .vertical
        }
    }


}
