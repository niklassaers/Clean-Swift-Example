import Foundation

// Views perspective on Interactor
protocol OnboardingEventHandlerProtocol: class {

    func completeOnboarding()
    func showOnboardingView(request: Model.ShowOnboardingView.Request)
}
