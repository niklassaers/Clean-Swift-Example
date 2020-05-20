import Foundation

protocol OnboardingViewProtocol: class {

    func dismiss()
    func showOnboardingView(viewModel: Model.ShowOnboardingView.ViewModel)
}
