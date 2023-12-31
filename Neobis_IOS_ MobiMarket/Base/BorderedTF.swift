//
//  BorderedTF.swift
//  neobis_ios_marketplace
//
//  Created by Eldar Gaiypov on 29/6/23.
//

import Foundation
import UIKit
import SnapKit

class BorderedTextField: UITextField {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.sublayers?.forEach { if $0.name == "bottomLine" { $0.removeFromSuperlayer() } }
        
        font = UIFont(name: "GothamPro-Medium", size: 16)
        
        let bottomLine = CALayer()
        bottomLine.name = "bottomLine"
        bottomLine.frame = CGRect(x: 0, y: bounds.height - 1, width: bounds.width, height: 1)
        bottomLine.backgroundColor = UIColor(red: 0.969, green: 0.965, blue: 0.976, alpha: 1).cgColor
        layer.addSublayer(bottomLine)
    }
    
}

