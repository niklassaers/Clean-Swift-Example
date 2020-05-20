import UIKit

class OnboardingViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel?
    @IBOutlet weak var button: UIButton?

    private var eventHandler: OnboardingEventHandlerProtocol?
    
    var viewModel: Model.ShowOnboardingView.ViewModel? {
        didSet {
            refresh()
        }
    }
    
    private func refresh() {
        // master of all UI updating
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        eventHandler?.showOnboardingView(request: Model.ShowOnboardingView.Request())
    }

    private func setup() {
        let presenter = OnboardingPresenter(view: self)
        let interactor = OnboardingInteractor(presenter: presenter)

        eventHandler = interactor
    }

    @IBAction func didTapContinue(_ sender: Any) {
        eventHandler?.completeOnboarding()
    }
}

extension OnboardingViewController: OnboardingViewProtocol {

    func dismiss() {
        dismiss(animated: true, completion: nil)
    }

    func showOnboardingView(viewModel: Model.ShowOnboardingView.ViewModel) {
        titleLabel?.text = viewModel.title
        button?.setTitle(viewModel.buttonTitle, for: .normal)
    }
}
