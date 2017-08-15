//
//  SkillVC.swift
//  app-swoosh
//
//  Created by Jess Leivers on 15/08/2017.
//  Copyright © 2017 Sarah Jessica London. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    
    var player: Player!
    @IBOutlet weak var finishBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(player.desiredLeague)
    }

    @IBAction func beginnerTapped(_ sender: Any) {
        finishSignUp("beginner")
    }
    
    @IBAction func ballerTapped(_ sender: Any) {
        finishSignUp("baller")
    }
    
    func finishSignUp(_ skillLevel: String) {
        player.selectedSkillLevel = skillLevel
        finishBtn.isEnabled = true
        finishBtn.isHidden = false
        print( player.selectedSkillLevel)
        print(player.desiredLeague)
        
    }

}
