import Foundation

final class OnboardingInteractor {
    
    let presenter: OnboardingPresenterProtocol
    let worker: OnboardingWorker
    
    init(presenter: OnboardingPresenterProtocol, worker: OnboardingWorker = OnboardingWorker()) {
        self.presenter = presenter
        self.worker = worker
    }
}

extension OnboardingInteractor: OnboardingInteractorProtocol {
    func completeOnboarding() {
        self.worker.completeOnboarding()
        self.presenter.dismissOnboarding()
    }
    
    func showOnboardingView(request: Model.ShowOnboardingView.Request) {
        self.presenter.presentOnboarding(response: Model.ShowOnboardingView.Response())
    }
}
