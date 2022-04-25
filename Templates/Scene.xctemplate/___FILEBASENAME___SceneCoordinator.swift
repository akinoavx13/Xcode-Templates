//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit.UINavigationController
import SwiftUI
import Core

protocol ___VARIABLE_sceneName___SceneCoordinatorDependencies: AnyObject { }

final class ___VARIABLE_sceneName___SceneCoordinator: CoordinatorProtocol {
    
    // MARK: - Properties
    
    var parentCoordinator: CoordinatorProtocol?
    var children: [CoordinatorProtocol] = []
    
    private let navigationController: UINavigationController
    private let dependencies: ___VARIABLE_sceneName___SceneCoordinatorDependencies

    // MARK: - Lifecycle
    
    init(navigationController: UINavigationController,
         dependencies: ___VARIABLE_sceneName___SceneCoordinatorDependencies) {
        self.navigationController = navigationController
        self.dependencies = dependencies
    }
    
    // MARK: - Methods
    
    @MainActor
    func start(params: Any...) {
        let viewModel = ___VARIABLE_sceneName___SceneViewModel()
        viewModel.coordinator = self
        
        let viewController = UIHostingController(rootView: ___VARIABLE_sceneName___Scene(viewModel: viewModel))
        
        navigationController.setViewControllers([viewController],
                                                animated: false)
    }
    
    func stop() { fatalError("Should not be stopped.") }
}
