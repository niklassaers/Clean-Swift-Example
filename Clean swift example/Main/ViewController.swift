import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let viewController = self.storyboard?.instantiateViewController(identifier: "onboarding")
        viewController?.isModalInPresentation = true
        
        if let controller = viewController {
            self.present(controller, animated: true, completion: nil)
        }
    }
}

