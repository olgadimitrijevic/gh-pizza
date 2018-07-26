import UIKit

/* ************************************************ */
/*  0. view and update storyboard                   */
/* ************************************************ */

class ViewController: UIViewController {

    /* ************************************************ */
    /*  1. hook up outlets and actions                  */
    /* ************************************************ */
    @IBOutlet weak var pizzaImage: UIImageView!
    @IBOutlet weak var pizzaButton: UIButton!
    @IBOutlet weak var pizzaName: UILabel!
    
    let pizzaImageArray = ["supreme", "cheese-mushroom", "pepperoni", "sausage-pepper","spinach-tomato"]
    
    var spinCounter = 0
    var counter = 0


    @IBAction func clickPizzaButton(_ sender: Any) {
        /* ************************ */
        /*  2. update counter       */
        /* ************************ */
        // updateArrayCounter()
        
        /* ************************ */
        /*  3. update pizza image   */
        /* ************************ */
        // updatePizzaImage()
        
        /* ************************ */
        /*  4. update pizza name    */
        /* ************************ */
        // updatePizzaName()
        
        /* ************************ */
        /*  5. rotate pizza image   */
        /* ************************ */
        // rotateImage()
    }
    
    func updateArrayCounter() {
        // TODO: Fill in the blanks
        // Goal: Loop through above pizza array so that the counter updates from 0 to the length
        //       of the array, and then back to 0
        //        if counter < 4 {
        //            counter += 1
        //        } else {
        //            counter = 0
        //        }
    }
    
    func updatePizzaName() {
        // TODO: Fill in the blanks
        // Goal: Update pizza name
        //pizzaName.text = pizzaImageArray[counter]
    }
    
    func updatePizzaImage() {
        // TODO: Fill in the blanks
        // Goal: Update pizza image
        //pizzaImage.image = UIImage(named:pizzaImageArray[counter] )
    }
    
    func rotateImage() {
        UIView.animate(withDuration: 0.1, delay: 0, options: UIViewAnimationOptions.curveEaseIn, animations: {
            self.pizzaImage.transform = self.pizzaImage.transform.rotated(by: CGFloat( Double.pi))
        }) { (result) in
            if self.spinCounter > 4 {
                self.updateArrayCounter()
                self.updatePizzaImage()
                self.updatePizzaName()
                self.spinCounter = 0
            } else {
                self.rotateImage()
                self.spinCounter += 1
            }
        }
    }
}
