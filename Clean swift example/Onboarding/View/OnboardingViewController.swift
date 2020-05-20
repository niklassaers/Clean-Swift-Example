import UIKit

class OnboardingViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
    private var eventHandler: OnboardingEventHandlerProtocol?
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.eventHandler?.showOnboardingView(request: Model.ShowOnboardingView.Request())
    }
    
    private func setup() {
        let presenter = OnboardingPresenter(view: self)
        let interactor = OnboardingInteractor(presenter: presenter)
        
        self.eventHandler = interactor
    }
    
    @IBAction func didTapContinue(_ sender: Any) {
        self.eventHandler?.completeOnboarding()
    }
}

extension OnboardingViewController: OnboardingViewProtocol {
    
    func dismiss() {
        self.dismiss(animated: true, completion: nil)
    }
    
    func showOnboardingView(viewModel: Model.ShowOnboardingView.ViewModel) {
        self.titleLabel.text = viewModel.title
        self.button.setTitle(viewModel.buttonTitle, for: .normal)
    }
}
