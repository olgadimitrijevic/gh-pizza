import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pizzaImage: UIImageView!
    @IBOutlet weak var pizzaButton: UIButton!
    @IBOutlet weak var pizzaName: UILabel!
    
    let pizzaImageArray = ["supreme", "cheese-mushroom", "pepperoni", "sausage-pepper","spinach-tomato"]
    
    var spinCounter = 0
    var counter = 0

    @IBAction func clickPizzaButton(_ sender: Any) {
        /* ******************************** */
        /*  1 - 3. rotate pizza image       */
        /* ******************************** */
         updateArrayCounter()
         updatePizzaImage()
         updatePizzaName()
        
        /* ************************ */
        /*  4. rotate pizza image   */
        /* ************************ */
        // rotateImage()
    }
    
    func updateArrayCounter() {
        if counter < 4 {
            counter += 1
        } else {
            counter = 0
        }
    }
    
    func updatePizzaImage() {
        pizzaImage.image = UIImage(named: pizzaImageArray[counter])
    }
    
    func updatePizzaName() {
        pizzaName.text = pizzaImageArray[counter]
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
