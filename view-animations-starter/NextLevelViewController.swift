
import UIKit

class NextLevelViewController: UIViewController {

    @IBOutlet weak var goldenView: UIView!
    @IBOutlet weak var greenView: UIView!

    private var isFlipped: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func transition(_ sender: UIButton) {
        isFlipped = !isFlipped

        let cardToFlip = isFlipped ? goldenView : greenView
        let bottomCard = isFlipped ? greenView : goldenView

        UIView.transition(from: cardToFlip!,
                          to: bottomCard!,
                          duration: 0.5,
                          options: [.transitionCurlUp, .showHideTransitionViews],
                          completion: nil)


//        UIView.transition(with: cardToFlip!,
//                          duration: 0.5,
//                          options: [.transitionFlipFromRight],
//                          animations: {
//
//                            cardToFlip?.isHidden =  true
//        },
//                          completion: { _ in
//
//                            self.view.bringSubview(toFront: bottomCard!)
//                            cardToFlip?.isHidden = false
//        })
    }

}
