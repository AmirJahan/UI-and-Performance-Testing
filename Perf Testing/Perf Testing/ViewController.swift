import UIKit

class ViewController: UIViewController
{
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func runIt(_ sender: Any)
    {
        let totalAttempt : Int = 100000000;
        var sum : Int = 0;
        
        for _ in 0...totalAttempt
        {
            let dice : Int = (Int)(arc4random() % 6) + 1;
            
            sum += dice;
        }
        
        let average : Float =  Float(sum) / Float(totalAttempt);
        
        print("average is: \(average)");
    }
}
