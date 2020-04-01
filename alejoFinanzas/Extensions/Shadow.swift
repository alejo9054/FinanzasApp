//
//  Shadow.swift
//  alejoFinanzas
//
//  Created by Alejo on 26/03/20.
//  Copyright © 2020 Alejo. All rights reserved.
//

import UIKit

extension UIView {
    var borderUIColor :UIColor {
        get {
            guard let color = layer.borderColor else {
                return UIColor.black
                
            }
            return UIColor(cgColor: color)
        }
        set {
            layer.borderColor = newValue.cgColor
        }
    }
}
