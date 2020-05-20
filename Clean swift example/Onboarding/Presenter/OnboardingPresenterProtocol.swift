import Foundation

protocol OnboardingPresenterProtocol {
 
    func dismissOnboarding()
    func presentOnboarding(response: Model.ShowOnboardingView.Response)
}
