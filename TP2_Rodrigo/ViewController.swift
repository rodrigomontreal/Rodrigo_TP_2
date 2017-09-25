
// TP2 - Jeu de mémoire pour les enfants

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

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

//-------------------------------------------------------
/* Connections avec le button dans le front de chaque card;
   La connection peut être vu sur "show connections inspector" au séléctionner le button;
   Tous les buttons ont connecté sur le code dessus.  */
    
/* Le fonctions qui pour appeler le fonction gyrateCard faire les animations;
 Le switch va identifier chaque carte par le tag */
    
    @IBAction func cardPlay(_ sender: UIButton) {
    
        switch sender.tag{
            case 1: // tag 1 = carte 1//
            gyrateCard(from: front_1, to: back_1)
        
            case 2: // tag 1 = carte 2//
            gyrateCard(from: front_2, to: back_2)
        default:
            break
            
   
            
        }
    
    }
    
    
    
 //-----------------------------------------------------
 // Fonction "flipCard": le but est faire la transition de les images quand les uaagers appuye sur la carte, la carte devra tourner, où le back sera visible //
  
    func gyrateCard(from: UIView, to: UIView) {
        let transitionOptions: UIViewAnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
        
        UIView.transition(with: from, duration: 1.0, options: transitionOptions, animations: {
            from.isHidden = true
        })
        
        UIView.transition(with: to, duration: 1.0, options: transitionOptions, animations: {
            to.isHidden = false
        })
    }

    
    
    
    
    
    
//===========================================================================================================
 /*
    @IBOutlet weak var imgView1: UIImageView!
    @IBOutlet weak var imgView2: UIImageView!
    @IBOutlet weak var imgView3: UIImageView!
    @IBOutlet weak var imgView4: UIImageView!
    
    @IBOutlet weak var card_1: UIView!
    @IBOutlet weak var card_2: UIView!
    @IBOutlet weak var card_3: UIView!
    @IBOutlet weak var card_4: UIView!
    
    var arrayOfImageViews: [UIImageView]!
    var arrayOfAnimalNames = ["panda.png", "panda.png", "penguin.png", "penguin.png"]
    var arrayOfRandomAnimalNames = [String]()
    var arrayChosenCards = [String]()
    var arrayOfCards = [UIView]()
    
    var arrayOfShowingBacks = [UIView]()
    var arrayOfHidingFronts = [UIView]()
    
    var cards: [UIView]!
    
    //-------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        cards = [card_1, card_2, card_3, card_4]
        arrayOfImageViews = [imgView1, imgView2, imgView3, imgView4]
        randomAnimals()
        setImagesToCards()
    }
    //-------------------
    @IBAction func showCard(_ sender: UIButton) {
        if arrayOfHidingFronts.count == 2 {
            return
        }
        
        switch sender.tag {
        case 0:
            flipCard(from: front_1, to: back_1)
            arrayOfCards.append(card_1)
            arrayOfShowingBacks.append(back_1)
            arrayOfHidingFronts.append(front_1)
        case 1:
            flipCard(from: front_2, to: back_2)
            arrayOfCards.append(card_2)
            arrayOfShowingBacks.append(back_2)
            arrayOfHidingFronts.append(front_2)
        case 2:
            flipCard(from: front_3, to: back_3)
            arrayOfCards.append(card_3)
            arrayOfShowingBacks.append(back_3)
            arrayOfHidingFronts.append(front_3)
        case 3:
            flipCard(from: front_4, to: back_4)
            arrayOfCards.append(card_4)
            arrayOfShowingBacks.append(back_4)
            arrayOfHidingFronts.append(front_4)
        default:
            break
        }
        arrayChosenCards.append(arrayOfRandomAnimalNames[sender.tag])
        verification()
    }
    //-------------------
    func flipCard(from: UIView, to: UIView) {
        let transitionOptions: UIViewAnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
        
        UIView.transition(with: from, duration: 1.0, options: transitionOptions, animations: {
            from.isHidden = true
        })
        
        UIView.transition(with: to, duration: 1.0, options: transitionOptions, animations: {
            to.isHidden = false
        })
    }
    //-------------------
    func setImagesToCards() {
        var number = 0
        for imgView in arrayOfImageViews {
            imgView.image = UIImage(named: arrayOfRandomAnimalNames[number])
            number = number + 1
        }
    }
    //-------------------
    func randomAnimals() {
        let numberOfAnimals = arrayOfAnimalNames.count
        for _ in 1...numberOfAnimals {
            let randomNumber = Int(arc4random_uniform(UInt32(arrayOfAnimalNames.count)))
            arrayOfRandomAnimalNames.append(arrayOfAnimalNames[randomNumber])
            arrayOfAnimalNames.remove(at: randomNumber)
        }
    }
    //-------------------
    func resetCards() {
        if arrayOfShowingBacks.count == 2 {
            Timer.scheduledTimer(timeInterval: 2,
                                 target: self,
                                 selector: (#selector(reFlip)),
                                 userInfo: nil,
                                 repeats: false)
        }
    }
    //-------------------
    func verification() {
        if arrayChosenCards.count == 2 {
            if arrayChosenCards[0] == arrayChosenCards[1] {
                Timer.scheduledTimer(timeInterval: 2,
                                     target: self,
                                     selector: (#selector(hideCards)),
                                     userInfo: nil,
                                     repeats: false)
            } else {
                arrayOfCards = []
            }
            arrayChosenCards = []
        }
        resetCards()
    }
    //-------------------
    @objc func hideCards() {
        arrayOfCards[0].isHidden = true
        arrayOfCards[1].isHidden = true
        arrayOfCards = []
    }
    //-------------------
    func reFlip() {
        for index in 0..<arrayOfShowingBacks.count {
            flipCard(from: arrayOfShowingBacks[index], to: arrayOfHidingFronts[index])
        }
        arrayOfShowingBacks = []
        arrayOfHidingFronts = []
    }
    //-------------------
    @IBAction func reset(_ sender: UIButton) {
        for card in cards {
            card.isHidden =  false
        }
        arrayOfAnimalNames = ["panda.png", "panda.png", "penguin.png", "penguin.png"]
        arrayOfRandomAnimalNames = []
        randomAnimals()
        setImagesToCards()
    }
 */
    
    
 //===========================================================================================================
    
//---------------------
    
}

