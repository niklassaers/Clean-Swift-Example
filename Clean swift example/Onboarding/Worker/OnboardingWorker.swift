import Foundation

final class OnboardingWorker: OnboardingWorkerProtocol {
    
    lazy var userDefaults: UserDefaultsProtocol = UserDefaults.standard
    
    func completeOnboarding() {
        userDefaults.set(true, forKey: "onboarding-complete")
    }
}
