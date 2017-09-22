
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
    @IBOutlet weak var back_15: UIView!
    @IBOutlet weak var front_15: UIView!
    @IBOutlet weak var back_16: UIView!
    @IBOutlet weak var front_16: UIView!
//----------------------------------------------------

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

//---------------------------------------------------
/* Connections avec le button dans le front de chaque card
   La connection peut être vu sur "show connections inspector" au séléctionner le button
   Tous les buttons ont connecté sur le code dessus  */
    
    
    @IBAction func showCard(_ sender: UIButton) {
    print(sender.tag)
    }

    

}

