//
//  WeatherPresenter.swift
//  LoginNSB
//
//  Created by ADELU ABIDEEN ADELEYE on 10/3/18.
//  Copyright © 2018 Spantom Technologies Ltd. All rights reserved.
//
import UIKit

protocol WeatherPresenter {
    var backgroundColors: [CGColor] { get }
}

class WeatherPresenterImpl: WeatherPresenter {
    var backgroundColors: [CGColor] {
        
        return sunnyColors
    }
    
    private let sunnyColors: [CGColor] = {
        return [UIColor.sunnyTop.cgColor, UIColor.sunnyBottom.cgColor]
    }()
    
    private let snowyColors: [CGColor] = {
        return [UIColor.snowyTop.cgColor, UIColor.snowyBottom.cgColor]
    }()
    
}
