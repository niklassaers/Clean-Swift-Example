import Foundation

final class OnboardingInteractor {

    let presenter: OnboardingPresenterProtocol
    let worker: OnboardingWorker

    init(presenter: OnboardingPresenterProtocol,
         worker: OnboardingWorker = OnboardingWorker()) {
        
        self.presenter = presenter
        self.worker = worker
    }
}

extension OnboardingInteractor: OnboardingInteractorProtocol {
}

extension OnboardingInteractor: OnboardingEventHandlerProtocol {

    func completeOnboarding() {
        worker.completeOnboarding()
        presenter.dismissOnboarding()
    }

    func showOnboardingView(request: Model.ShowOnboardingView.Request) {
        presenter.presentOnboarding(response: Model.ShowOnboardingView.Response())
    }
}
