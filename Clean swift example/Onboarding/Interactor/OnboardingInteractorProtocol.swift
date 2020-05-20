import Foundation

protocol OnboardingInteractorProtocol {

    func completeOnboarding()
    func showOnboardingView(request: Model.ShowOnboardingView.Request)
}
