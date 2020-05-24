import Foundation

final class OnboardingWorker: OnboardingWorkerProtocol {
    
    static let kOnboardingComplete = "onboarding-complete"
    
    lazy var userDefaults: UserDefaultsProtocol = UserDefaults.standard
    
    private func registerDefaults(_ userDefaults: UserDefaultsProtocol) {
        userDefaults.register(defaults: [
            OnboardingWorker.kOnboardingComplete: false
        ])
    }
    
    var isOnboardingComplete: Bool {
        get {
            
            registerDefaults(userDefaults)
            return userDefaults.bool(forKey: OnboardingWorker.kOnboardingComplete)
        }
    }
    
    func completeOnboarding() {
        
        userDefaults.set(true, forKey: OnboardingWorker.kOnboardingComplete)
    }
}
