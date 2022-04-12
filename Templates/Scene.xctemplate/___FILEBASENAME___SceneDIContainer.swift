//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit.UINavigationController

final class ___VARIABLE_sceneName___SceneDIContainer {
    
    struct Dependencies { }
    
    // MARK: - Properties
    
    private let dependencies: Dependencies
    
    // MARK: - Lifecycle
    
    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }
    
    // MARK: - Methods
    
    func makeCoordinator(navigationController: UINavigationController) -> ___VARIABLE_sceneName___SceneCoordinator {
        ___VARIABLE_sceneName___SceneCoordinator(navigationController: navigationController,
                             dependencies: self)
    }
}

// MARK: - ___VARIABLE_sceneName___SceneCoordinatorDependencies -

extension ___VARIABLE_sceneName___SceneDIContainer: ___VARIABLE_sceneName___SceneCoordinatorDependencies { }
