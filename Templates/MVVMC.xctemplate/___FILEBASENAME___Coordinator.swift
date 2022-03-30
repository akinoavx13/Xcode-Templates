//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit.UINavigationController

enum ___VARIABLE_sceneName___Route: CoordinatorRoute { }

final class ___VARIABLE_sceneName___Coordinator: CoordinatorProtocol {
    
    // MARK: - Properties
    
    weak var parentCoordinator: CoordinatorProtocol?
    
    var children: [CoordinatorProtocol] = []
    var navigationController: UINavigationController

    // MARK: - Lifecycle
    
    init(navigationController: UINavigationController?) {
        guard let navigationController = navigationController else { fatalError("Navigation controller is nil.") }
        
        self.navigationController = navigationController
    }
    
    // MARK: - Methods
    
    func start() {
        let viewModel: ___VARIABLE_sceneName___ViewModelProtocol = ___VARIABLE_sceneName___ViewModel()
        viewModel.coordinator = self
    
        let viewController = ___VARIABLE_sceneName___ViewController(nib: R.nib.___VARIABLE_sceneName___ViewController)
        viewController.viewModel = viewModel
        
        navigationController.present(viewController, animated: true)
    }
    
    func stop() {
        navigationController.dismiss(animated: true)
        parentCoordinator?.childDidStop(self)
    }
    
    func navigate(to route: CoordinatorRoute) {
        guard let coordinatorRoute = route as? ___VARIABLE_sceneName___Route else { fatalError("Route has not the right type.") }
        
        switch coordinatorRoute {
            
        }
    }
}
