//
//  ViewController.swift
//  LoL Matchup
//
//  Created by Oliver Kalemba / BBS2H20A on 22.09.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // true left hero is changing 7 false right hero is changing
    var isLeftSide = false;
    var imageArray = idkhowtoaddimgarrays;
    var iconArray = idkhowtoaddimgarrays;
    
    
    
    
    func ChooseParticipantButton() {
        
        if (pressedButtonTag == "left") {
            isLeftSide = true;
        } else {
            isLeftSide = false;
        }
        
    }
    
    func ChooseHeroButton() {
        
        playsound()
        
        if (isLeftSide) {
            
        }
        
    }


}

