import Foundation

final class OnboardingWorker {
    func completeOnboarding() {
        UserDefaults.standard.set(true, forKey: "onboarding-complete")
    }
}
