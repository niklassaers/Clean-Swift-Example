import Foundation

protocol OnboardingPresenterProtocol {
    func dismissOnboarding()
    
    func presentOnboarding(response: Model.ShowOnboardingView.Response)
}

final class OnboardingPresenter {
    
    weak var view: OnboardingViewProtocol?
    
    init(view: OnboardingViewProtocol) {
        self.view = view
    }
}

extension OnboardingPresenter: OnboardingPresenterProtocol {
    func dismissOnboarding() {
        self.view?.dismiss()
    }
    
    func presentOnboarding(response: Model.ShowOnboardingView.Response) {
        let viewModel = Model.ShowOnboardingView.ViewModel(title: "Welcome", buttonTitle: "Continue")
        self.view?.showOnboardingView(viewModel: viewModel)
    }
}
