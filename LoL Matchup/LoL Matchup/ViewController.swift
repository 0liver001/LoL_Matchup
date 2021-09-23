//
//  ViewController.swift
//  LoL Matchup
//
//  Created by Oliver Kalemba / BBS2H20A on 22.09.21.
//

import UIKit

class ViewController: UIViewController {

    var arrIndexL = 0;
    var arrIndexR = 1;
    
    
    @IBAction func Lbutton(_ sender: UIButton) {
        arrIndexL += 1;
        if (arrIndexL >= champs.count){
            arrIndexL = 0;
        }
        
        switch arrIndexL {
        case 0: //Darius
            Lchamp.text = "Darius"
            imageL.image = champs[0]
            smallImageL.image = runes[0]
        case 1: // Fiora
            Lchamp.text = "Fiora"
            imageL.image = champs[1]
            smallImageL.image = runes[1]
        case 2: // Kennen
            Lchamp.text = "Kennen"
            imageL.image = champs[2]
            smallImageL.image = runes[2]
        case 3: // Mordekaiser
            Lchamp.text = "Morde"
            imageL.image = champs[3]
            smallImageL.image = runes[0]
        case 4: //Riven
            Lchamp.text = "Riven"
            imageL.image = champs[4]
            smallImageL.image = runes[0]
        case 5: //Renekton
            Lchamp.text = "Renekton"
            imageL.image = champs[5]
            smallImageL.image = runes[0]
        default:
            Lchamp.text = "champion"
        }
        
    }
    
    @IBAction func Rbutton(_ sender: UIButton) {
        arrIndexR += 1;
        if (arrIndexR >= champs.count){
            arrIndexR = 0;
        }
        
        switch arrIndexR {
        case 0: //Darius
            Rchamp.text = "Darius"
            imageR.image = champs[0]
            smallImageR.image = runes[0]
        case 1: // Fiora
            Rchamp.text = "Fiora"
            imageR.image = champs[1]
            smallImageR.image = runes[1]
        case 2: // Kennen
            Rchamp.text = "Kennen"
            imageR.image = champs[2]
            smallImageR.image = runes[2]
        case 3: // Mordekaiser
            Rchamp.text = "Morde"
            imageR.image = champs[3]
            smallImageR.image = runes[0]
        case 4: //Riven
            Rchamp.text = "Riven"
            imageR.image = champs[4]
            smallImageR.image = runes[0]
        case 5: //Renekton
            Rchamp.text = "Renekton"
            imageR.image = champs[5]
            smallImageR.image = runes[0]
        default:
            Rchamp.text = "champion"
        }
    }
    
    @IBOutlet weak var imageL: UIImageView!
    @IBOutlet weak var imageR: UIImageView!
    
    
    @IBOutlet weak var smallImageL: UIImageView!
    @IBOutlet weak var smallImageR: UIImageView!
    
    
    @IBOutlet weak var Lchamp: UILabel!
    @IBOutlet weak var Rchamp: UILabel!
    
    @IBOutlet weak var itemL: UIImageView!
    
    let champs: [UIImage] = [ #imageLiteral(resourceName: "darius"), #imageLiteral(resourceName: "fiora"), #imageLiteral(resourceName: "kennen"), #imageLiteral(resourceName: "MicrosoftTeams-image"), #imageLiteral(resourceName: "riven"), #imageLiteral(resourceName: "renekton") ]
    let runes: [UIImage] = [#imageLiteral(resourceName: "conqueror"), #imageLiteral(resourceName: "grasp"), #imageLiteral(resourceName: "rush")]
    let items: [UIImage] = [#imageLiteral(resourceName: "dblade"), #imageLiteral(resourceName: "dshield"), #imageLiteral(resourceName: "dring")]
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Lchamp.text = "Darius"
        imageL.image = champs[0]
        smallImageL.image = runes[0]
        
        Rchamp.text = "Fiora"
        imageR.image = champs[1]
        smallImageR.image = runes[1]
        // Do any additional setup after loading the view.
    }


}

