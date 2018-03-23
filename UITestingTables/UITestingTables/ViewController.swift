import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    @IBOutlet weak var myTableView: UITableView!
    
    var myArr : NSArray?;
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return myArr!.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId");
        cell?.textLabel?.text = myArr?.object(at: indexPath.row) as? String;
        
        if (indexPath.row == 2)
        {
            cell?.accessibilityIdentifier = "thisParticualrCell";
            
        }
        
        
        return cell!;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let alertCtrl = UIAlertController(title: myArr?.object(at: indexPath.row) as? String,
                                          message: "you tapped", preferredStyle: UIAlertControllerStyle.alert)
        
        alertCtrl.addAction(UIAlertAction(title: "Ok",
                                          style: UIAlertActionStyle.default,
                                          handler: nil));
        
        self.show(alertCtrl, sender: nil);
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        myArr = NSArray(arrayLiteral: "Canada", "UAE", "Mexico", "Panama", "Brazil", "Uruguay", "Chile");
        
        
    }
    
    public func myFunc ()
    {
        
    }
    
}





