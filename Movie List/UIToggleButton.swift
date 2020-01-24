//
//  UIToggleButton.swift
//  Movie List
//
//  Created by Chris Gonzales on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
import UIKit


class UIToggleButton:UIButton{
    var isOn:Bool = false
    
//    var Unseen:UIButton! = nil{
//        didSet{
//            updateDisplay()
//        }
//    }
//    var Seen:UIButton! = nil{
//        didSet{
//            updateDisplay()
//        }
//    }
//     
//    func updateDisplay(){
//        if isOn == false {
//            Unseen.titleLabel?.text = "Not Seen"
//            }else if isOn == true {
//                Seen.titleLabel?.text = "Seen"
//            }
//        }
    
    override func endTracking(_ touch: UITouch?, with event: UIEvent?) {
        super.endTracking(touch, with: event)
        isOn = !isOn
    }
}

