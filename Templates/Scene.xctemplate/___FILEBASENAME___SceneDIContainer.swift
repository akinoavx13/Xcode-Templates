//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit.UINavigationController

public final class ___VARIABLE_sceneName___SceneDIContainer {
    public struct Dependencies {
        // MARK: - Lifecycle

        public init() { }
    }

    // MARK: - Properties

    private let dependencies: Dependencies

    // MARK: - Lifecycle

    public init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }

    // MARK: - Methods

    public func makeCoordinator(navigationController: UINavigationController) -> ___VARIABLE_sceneName___SceneCoordinator {
        ___VARIABLE_sceneName___SceneCoordinator(navigationController: navigationController, dependencies: self)
    }
}

// MARK: - ___VARIABLE_sceneName___SceneCoordinatorDependencies -

extension ___VARIABLE_sceneName___SceneDIContainer: ___VARIABLE_sceneName___SceneCoordinatorDependencies {
    // MARK: - Methods

    @MainActor
    public func makeViewModel(coordinator: ___VARIABLE_sceneName___SceneCoordinator?) -> ___VARIABLE_sceneName___SceneViewModel {
        let viewModel = ___VARIABLE_sceneName___SceneViewModel()
        viewModel.coordinator = coordinator

        return viewModel
    }

    public func makeScene(viewModel: ___VARIABLE_sceneName___SceneViewModel) -> ___VARIABLE_sceneName___Scene {
        ___VARIABLE_sceneName___Scene(viewModel: viewModel)
    }
}
