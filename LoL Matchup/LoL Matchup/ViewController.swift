//
//  ViewController.swift
//  LoL Matchup
//
//  Created by Oliver Kalemba / BBS2H20A on 22.09.21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var arrIndexL = 0;
    var arrIndexR = 1;
    
    var myPlayer : AVAudioPlayer = AVAudioPlayer()
    
    // initializing audio
    let voicelines = [
        Bundle.main.path(forResource : "Darius", ofType : ".mp3"),
        Bundle.main.path(forResource : "Fiora", ofType : ".mp3"),
        Bundle.main.path(forResource : "Kennen", ofType : ".mp3"),
        Bundle.main.path(forResource : "Mordekaiser", ofType : ".mp3"),
        Bundle.main.path(forResource : "Riven", ofType : ".mp3"),
        Bundle.main.path(forResource : "Renekton", ofType : ".mp3"),
    ]
    
    
    
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
            do {
                try myPlayer = AVAudioPlayer(contentsOf : URL (fileURLWithPath: voicelines[arrIndexL]!))
            } catch {
                print(error)
            }
            myPlayer.play()
            
            
        case 1: // Fiora
            Lchamp.text = "Fiora"
            imageL.image = champs[1]
            smallImageL.image = runes[1]
            do {
                try myPlayer = AVAudioPlayer(contentsOf : URL (fileURLWithPath: voicelines[arrIndexL]!))
            } catch {
                print(error)
            }
            myPlayer.play()
        case 2: // Kennen
            Lchamp.text = "Kennen"
            imageL.image = champs[2]
            smallImageL.image = runes[2]
            do {
                try myPlayer = AVAudioPlayer(contentsOf : URL (fileURLWithPath: voicelines[arrIndexL]!))
            } catch {
                print(error)
            }
            myPlayer.play()
        case 3: // Mordekaiser
            Lchamp.text = "Morde"
            imageL.image = champs[3]
            smallImageL.image = runes[0]
            do {
                try myPlayer = AVAudioPlayer(contentsOf : URL (fileURLWithPath: voicelines[arrIndexL]!))
            } catch {
                print(error)
            }
            myPlayer.play()
        case 4: //Riven
            Lchamp.text = "Riven"
            imageL.image = champs[4]
            smallImageL.image = runes[0]
            do {
                try myPlayer = AVAudioPlayer(contentsOf : URL (fileURLWithPath: voicelines[arrIndexL]!))
            } catch {
                print(error)
            }
            myPlayer.play()
        case 5: //Renekton
            Lchamp.text = "Renekton"
            imageL.image = champs[5]
            smallImageL.image = runes[0]
            do {
                try myPlayer = AVAudioPlayer(contentsOf : URL (fileURLWithPath: voicelines[arrIndexL]!))
            } catch {
                print(error)
            }
            myPlayer.play()
        default:
            Lchamp.text = "champion"
        }
        itemPicker();
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
            do {
                try myPlayer = AVAudioPlayer(contentsOf : URL (fileURLWithPath: voicelines[arrIndexR]!))
            } catch {
                print(error)
            }
            myPlayer.play()
        case 1: // Fiora
            Rchamp.text = "Fiora"
            imageR.image = champs[1]
            smallImageR.image = runes[1]
            do {
                try myPlayer = AVAudioPlayer(contentsOf : URL (fileURLWithPath: voicelines[arrIndexR]!))
            } catch {
                print(error)
            }
            myPlayer.play()
        case 2: // Kennen
            Rchamp.text = "Kennen"
            imageR.image = champs[2]
            smallImageR.image = runes[2]
            do {
                try myPlayer = AVAudioPlayer(contentsOf : URL (fileURLWithPath: voicelines[arrIndexR]!))
            } catch {
                print(error)
            }
            myPlayer.play()
        case 3: // Mordekaiser
            Rchamp.text = "Morde"
            imageR.image = champs[3]
            smallImageR.image = runes[0]
            do {
                try myPlayer = AVAudioPlayer(contentsOf : URL (fileURLWithPath: voicelines[arrIndexR]!))
            } catch {
                print(error)
            }
            myPlayer.play()
        case 4: //Riven
            Rchamp.text = "Riven"
            imageR.image = champs[4]
            smallImageR.image = runes[0]
            do {
                try myPlayer = AVAudioPlayer(contentsOf : URL (fileURLWithPath: voicelines[arrIndexR]!))
            } catch {
                print(error)
            }
            myPlayer.play()
        case 5: //Renekton
            Rchamp.text = "Renekton"
            imageR.image = champs[5]
            smallImageR.image = runes[0]
            do {
                try myPlayer = AVAudioPlayer(contentsOf : URL (fileURLWithPath: voicelines[arrIndexR]!))
            } catch {
                print(error)
            }
            myPlayer.play()
        default:
            Rchamp.text = "champion"
        }
        itemPicker();
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
    
    
    func itemPicker(){
        switch arrIndexL {
        case 0:
            if(arrIndexR == 1 || arrIndexR == 2 || arrIndexR == 5){
                itemL.image = items[1]
            }
            else{
                itemL.image = items[0]
            }
        case 1:
            if(arrIndexR == 2 || arrIndexR == 3 || arrIndexR == 4){
                itemL.image = items[1]
            }
            else{
                itemL.image = items[0]
            }
        case 2:
            if(arrIndexR == 0 || arrIndexR == 1){
                itemL.image = items[0]
            }
            else{
                itemL.image = items[2]
            }
        case 3:
            if(arrIndexR == 1 || arrIndexR == 2 || arrIndexR == 4){
                itemL.image = items[1]
            }
            else{
                itemL.image = items[2]
            }
        case 4:
            if(arrIndexR == 1 || arrIndexR == 2 || arrIndexR == 3){
                itemL.image = items[1]
            }
            else{
                itemL.image = items[0]
            }
        case 5:
            if(arrIndexR == 1 || arrIndexR == 2){
                itemL.image = items[1]
            }
            else{
                itemL.image = items[0]
            }
        default:
            var a = 0
        }
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        smallImageL.layer.cornerRadius = 45
        smallImageR.layer.cornerRadius = 45
        
        // initializing hereos
        Lchamp.text = "Darius"
        imageL.image = champs[0]
        smallImageL.image = runes[0]
        
        Rchamp.text = "Fiora"
        imageR.image = champs[1]
        smallImageR.image = runes[1]
        itemPicker();
        // Do any additional setup after loading the view.
    }


}

