//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Jess Leivers on 14/08/2017.
//  Copyright © 2017 Sarah Jessica London. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2
        layer.borderColor = UIColor.white.cgColor
    
    }

}
