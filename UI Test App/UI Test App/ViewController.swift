
import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var emailTxtFld: UITextField!
    
    @IBOutlet weak var autResLabel: UILabel!
    @IBOutlet weak var passTxtFld: UITextField!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func loginAction(_ sender: Any)
    {
        if ( emailTxtFld.text == "amir.jahan@gmail.com" )
        {
            if ( passTxtFld.text == "myPassword")
            {
                autResLabel.text = "success"
            }
            else
            {
                autResLabel.text = "failed"
            }
        }
    }
}

