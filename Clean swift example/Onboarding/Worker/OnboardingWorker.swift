import Foundation

final class OnboardingWorker: OnboardingWorkerProtocol {
    func completeOnboarding() {
        UserDefaults.standard.set(true, forKey: "onboarding-complete")
    }
}
