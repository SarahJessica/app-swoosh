//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Jess Leivers on 15/08/2017.
//  Copyright © 2017 Sarah Jessica London. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!

    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
        
    }

    @IBAction func onNextTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "skillVCSegue", sender: self)
        
    }
    
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue) {  }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    @IBAction func onCoEdTapped(_ sender: Any) {
        selectLeague(leagueType: "co-ed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
        nextBtn.isHidden = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
        
    }

}
