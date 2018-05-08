import UIKit

class DarkViewController: UIViewController {

    @IBOutlet weak var blueView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func animate(_ sender: UIButton) {
        
        UIView.animate(withDuration: 1.0,
                       delay: 0.0,
                       options: [.autoreverse, .repeat],
                       animations: {
                        
                        self.blueView.backgroundColor = .yellow
                        //self.blueView.alpha = 0.0
                        self.blueView.frame.size.width -= 15
                        self.blueView.frame.size.height -= 15
                        self.blueView.frame.origin.x += 50
        },
                       completion: nil)
    }
}
