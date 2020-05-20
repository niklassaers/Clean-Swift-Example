import Foundation

protocol OnboardingViewProtocol: class {

    var viewModel: Model.ShowOnboardingView.ViewModel? { get set }
    
    func dismiss()
    func showOnboardingView(viewModel: Model.ShowOnboardingView.ViewModel)
}
