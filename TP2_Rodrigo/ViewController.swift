
// TP2 - Jeu de mémoire pour les enfants "Igarderie"

//====================================================

import UIKit

//====================================================

class ViewController: UIViewController {

//----------------------------------------------------
 //Connections avec back e front de chaque card
    
    @IBOutlet weak var back_1: UIView!
    @IBOutlet weak var front_1: UIView!
    @IBOutlet weak var back_2: UIView!
    @IBOutlet weak var front_2: UIView!
    @IBOutlet weak var back_3: UIView!
    @IBOutlet weak var front_3: UIView!
    @IBOutlet weak var back_4: UIView!
    @IBOutlet weak var front_4: UIView!
    @IBOutlet weak var back_5: UIView!
    @IBOutlet weak var front_5: UIView!
    @IBOutlet weak var back_6: UIView!
    @IBOutlet weak var front_6: UIView!
    @IBOutlet weak var back_7: UIView!
    @IBOutlet weak var front_7: UIView!
    @IBOutlet weak var back_8: UIView!
    @IBOutlet weak var front_8: UIView!
    @IBOutlet weak var back_9: UIView!
    @IBOutlet weak var front_9: UIView!
    @IBOutlet weak var back_10: UIView!
    @IBOutlet weak var front_10: UIView!
    @IBOutlet weak var back_11: UIView!
    @IBOutlet weak var front_11: UIView!
    @IBOutlet weak var back_12: UIView!
    @IBOutlet weak var front_12: UIView!
    @IBOutlet weak var back_13: UIView!
    @IBOutlet weak var front_13: UIView!
    @IBOutlet weak var back_14: UIView!
    @IBOutlet weak var front_14: UIView!
//----------------------------------------------------
    
    @IBOutlet weak var imgView1: UIImageView!
    @IBOutlet weak var imgView2: UIImageView!
    @IBOutlet weak var imgView3: UIImageView!
    @IBOutlet weak var imgView4: UIImageView!
    @IBOutlet weak var imgView5: UIImageView!
    @IBOutlet weak var imgView6: UIImageView!
    @IBOutlet weak var imgView7: UIImageView!
    @IBOutlet weak var imgView8: UIImageView!
    @IBOutlet weak var imgView9: UIImageView!
    @IBOutlet weak var imgView10: UIImageView!
    @IBOutlet weak var imgView11: UIImageView!
    @IBOutlet weak var imgView12: UIImageView!
    @IBOutlet weak var imgView13: UIImageView!
    @IBOutlet weak var imgView14: UIImageView!
    
//---------------------------------------------------------
// les variables //
    
    var arrayOfImageViews: [UIImageView]!
    var arrayOfAnimalNames = ["chat.png","chat.png","arara2.png","arara2.png","chien2.png","chien2.png" , "lapin.2png.png", "lapin.2png.png" , "singe2.png","singe2.png","tiger2.png","tiger2.png", "tortue2.png","tortue2.png"]
    
    var arrayHasardNomFigure = [String]()
    var arrayChoisiCards = [String]()
    var arrayOfCards = [UIView]()
    var arrayDerriereCards = [UIView]()
    var arrayCacheFronts = [UIView]()
    var cards: [UIView]!
    

//--------------------------------------------------------
// Connection avec les cartes
    
    @IBOutlet weak var card_1: UIView!
    @IBOutlet weak var card_2: UIView!
    @IBOutlet weak var card_3: UIView!
    @IBOutlet weak var card_4: UIView!
    @IBOutlet weak var card_5: UIView!
    @IBOutlet weak var card_6: UIView!
    @IBOutlet weak var card_7: UIView!
    @IBOutlet weak var card_8: UIView!
    @IBOutlet weak var card_9: UIView!
    @IBOutlet weak var card_10: UIView!
    @IBOutlet weak var card_11: UIView!
    @IBOutlet weak var card_12: UIView!
    @IBOutlet weak var card_13: UIView!
    @IBOutlet weak var card_14: UIView!
    

//-------------------------------------------------------
// Remplacement du méthode où la class père met en oeuvre
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cards = [card_1, card_2, card_3, card_4, card_5, card_6, card_7, card_8, card_9, card_10, card_10, card_11, card_12, card_13, card_14]
        arrayOfImageViews = [imgView1, imgView2, imgView3, imgView4,imgView5,imgView6,imgView7,imgView8,imgView9,imgView10,imgView11,imgView12,imgView13,imgView14]
        randomAnimals() // appele le fonction randomAnimals
        setImagesToCards() // affichage des images aprés le fonction randomAnimals , travailler au hasard

    }

//-------------------------------------------------------

    
/* Le fonction pour appeler le fonction gyrateCard faire les animations;
 Le switch va identifier chaque carte par le tag, les tag on doit commencer par 0 */
    
    @IBAction func cardPlay(_ sender: UIButton) {
 
        
/* Si la tag est 0, alors appeler le fonction gyrateCard sur "front_1 et back_1" , ajouter l'élement "card_1" à variable(array)"arrayOfCards" , l'élement "back_1" à variable(array) "arrayDerriereCards" et l'élement "front_1" à variable(array) arrayCacheFronts, suivre  le même ordre pour chaque case */
        
        switch sender.tag{
            case 0: // tag 0 = carte 1//
            gyrateCard(from: front_1, to: back_1)
            arrayOfCards.append(card_1)
            arrayDerriereCards.append(back_1)
            arrayCacheFronts.append(front_1)
        
            case 1: // tag 1 = carte 2//
            gyrateCard(from: front_2, to: back_2)
            arrayOfCards.append(card_2)
            arrayDerriereCards.append(back_2)
            arrayCacheFronts.append(front_2)
            
           case 2: // tag 3 = carte 3 //
           gyrateCard(from: front_3, to: back_3)
           arrayOfCards.append(card_3)
           arrayDerriereCards.append(back_3)
           arrayCacheFronts.append(front_3)
            
           case 3: //tag 4 = carte 4 //
            gyrateCard(from: front_4, to: back_4)
            arrayOfCards.append(card_4)
            arrayDerriereCards.append(back_4)
            arrayCacheFronts.append(front_4)
            
           case 4: // tag 5 = carte 5 //
           gyrateCard(from: front_5, to: back_5)
           arrayOfCards.append(card_5)
           arrayDerriereCards.append(back_5)
           arrayCacheFronts.append(front_5)
            
           case 5: // tag 6 = carte 6 //
            gyrateCard(from: front_6, to: back_6)
            arrayOfCards.append(card_6)
            arrayDerriereCards.append(back_6)
            arrayCacheFronts.append(front_6)
            
           case 6: // tag 7 = carte 7 //
            gyrateCard(from: front_7, to: back_7)
            arrayOfCards.append(card_7)
            arrayDerriereCards.append(back_7)
            arrayCacheFronts.append(front_7)
            
           case 7: //tag 8 = carte 8 //
            gyrateCard(from: front_8, to: back_8)
            arrayOfCards.append(card_8)
            arrayDerriereCards.append(back_8)
            arrayCacheFronts.append(front_8)
            
           case 8: //tag 9 = carte 9 //
            gyrateCard(from: front_9, to: back_9)
            arrayOfCards.append(card_9)
            arrayDerriereCards.append(back_9)
            arrayCacheFronts.append(front_9)
            
          case 9: // tag 10 = carte 10 //
            gyrateCard(from: front_10, to: back_10)
            arrayOfCards.append(card_10)
            arrayDerriereCards.append(back_10)
            arrayCacheFronts.append(front_10)
            
          case 10: // tag 11 = carte 11 //
            gyrateCard(from: front_11, to: back_11)
            arrayOfCards.append(card_11)
            arrayDerriereCards.append(back_11)
            arrayCacheFronts.append(front_11)
            
          case 11: // tag 12 = carte 12 //
            gyrateCard(from: front_12, to: back_12)
            arrayOfCards.append(card_12)
            arrayDerriereCards.append(back_12)
            arrayCacheFronts.append(front_12)
            
          case 12: // tag 13 = carte 13 //
            gyrateCard(from: front_13, to: back_13)
            arrayOfCards.append(card_13)
            arrayDerriereCards.append(back_13)
            arrayCacheFronts.append(front_13)
            
         case 13: // tag 14 = carte 14 //
            gyrateCard(from: front_14, to: back_14)
            arrayOfCards.append(card_14)
            arrayDerriereCards.append(back_14)
            arrayCacheFronts.append(front_14)
            
        default:
            break
        }
        
        arrayChoisiCards.append(arrayHasardNomFigure[sender.tag])
        verification()
            
    
    }
    
 //-----------------------------------------------------
// Fonction "GyrateCard": le but est faire la transition de les images quand les usagers appuye sur la carte, la carte devra tourner, où le back sera visible //

  
    func gyrateCard(from: UIView, to: UIView) { // from et to: a definé dans le switch dessus , dans chaque case //
        let transitionOptions: UIViewAnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews] // animations //
        
        UIView.transition(with: from, duration: 1.0, options: transitionOptions, animations: { // minuteur d'affichage du front //
            from.isHidden = true
        })
        
        UIView.transition(with: to, duration: 1.0, options: transitionOptions, animations: {// minuteur d'affichage du back //
            to.isHidden = false
        })
    }
//-----------------------------------------------------
//  Montrer les images dans l'imageView aprés la fonction randomAnimals être executé
    
    func setImagesToCards() {
        var number = 0
        for imgView in arrayOfImageViews {
            imgView.image = UIImage(named: arrayHasardNomFigure[number])
            number = number + 1
        }
    }
//-----------------------------------------------------
// Faire au hasard le choix des animaux sur le tableau
    
    func randomAnimals() {
        let numberOfAnimals = arrayOfAnimalNames.count
        for _ in 1...numberOfAnimals {
            let randomNumber = Int(arc4random_uniform(UInt32(arrayOfAnimalNames.count)))
            arrayHasardNomFigure.append(arrayOfAnimalNames[randomNumber])
            arrayOfAnimalNames.remove(at: randomNumber)
        }
    }
//------------------------------------------------------
  // Fonction pour reinitialiser le jeu , on sera executé dans le bouton "de noveau"
    
        func deNoveau() {
                if arrayDerriereCards.count == 2 {
                    Timer.scheduledTimer(timeInterval: 2,
                                         target: self,
                                         selector: (#selector(reFlip)),
                                         userInfo: nil,
                                         repeats: false)
                }
            }
    

//-------------------------------------------------------
// Le fonction va verifier si les deux cartes ouverts sont le même  à chaque fois que je cliquer sur le carte//
    
            func verification() {
                if arrayChoisiCards.count == 2 {
                    if arrayChoisiCards[0] == arrayChoisiCards[1] {
                        Timer.scheduledTimer(timeInterval: 2,
                                             target: self,
                                             selector: (#selector(hideCards)),
                                             userInfo: nil,
                                             repeats: false)
                    } else {
                        arrayOfCards = []
                    }
                    arrayChoisiCards = []
                }
                deNoveau()
            }
//-----------------------------------------------------------
// Cacher les cartes
            @objc func hideCards() {
                arrayOfCards[0].isHidden = true
                arrayOfCards[1].isHidden = true
                arrayOfCards = []

            
            
    }
    
//-----------------------------------------------------------
            
            func reFlip() {
                for index in 0..<arrayDerriereCards.count {
                    gyrateCard(from: arrayDerriereCards[index], to: arrayCacheFronts[index])
                }
                arrayDerriereCards = []
                arrayCacheFronts = []
                
            }

//-------------------------------------------------
    
// Button de réinitialisation du jeu 
    
    @IBAction func deNoveau(_ sender: Any) {
        for card in cards {
            card.isHidden =  false
        }
        arrayOfAnimalNames = ["chat.png","chat.png","arara2.png","arara2.png","chien2.png","chien2.png","lapin.2png.png", "lapin.2png.png","singe2.png","singe2.png","tiger2.png","tiger2.png", "tortue2.png","tortue2.png"]
        
        arrayHasardNomFigure = []
        
        randomAnimals()// Séléctionner au hasard les animals , appeler le fonction randomAnimals
        setImagesToCards()// appeler le fonction setImagesToCards
    

    }
                
    
//------------

    
}
    







