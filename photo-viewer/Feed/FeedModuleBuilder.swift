
import UIKit

class FeedModuleBuilder {
 
    func build(navigationController: UINavigationController) -> FeedViewController? {
        let presenter = FeedPresenter()
        let view = FeedViewController(nibName: "FeedViewController", bundle: nil)
        view.feedViewOutput = presenter
        presenter.viewInput = view
        
        
        presenter.router = FeedRouter(navigationController: navigationController)
        
        let respository  = FeedRepository(webServices: WebServices())
        let interactor = FeedInteractor(repository: respository)
        presenter.interactorInput = interactor
        interactor.interactorOutput = presenter
        
        return view
    }
}
