import Foundation

final class OnboardingPresenter {

    weak var view: OnboardingViewProtocol?

    init(view: OnboardingViewProtocol) {
        self.view = view
    }
}

extension OnboardingPresenter: OnboardingPresenterProtocol {

    func dismissOnboarding() {
        view?.dismiss()
    }

    func presentOnboarding(response: Model.ShowOnboardingView.Response) {
        let viewModel = Model.ShowOnboardingView.ViewModel(
            title: "Welcome",
            buttonTitle: "Continue")
        
        view?.showOnboardingView(viewModel: viewModel)
    }
}
