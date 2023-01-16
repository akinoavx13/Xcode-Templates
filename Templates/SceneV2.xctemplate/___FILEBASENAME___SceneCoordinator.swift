//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import SwiftUI
import UIKit.UINavigationController

final class ___VARIABLE_sceneName___SceneCoordinator: CoordinatorProtocol {
    // MARK: - Properties

    weak var parentCoordinator: CoordinatorProtocol?
    var children: [CoordinatorProtocol] = []

    private let navigationController: UINavigationController

    // MARK: - Lifecycle

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    // MARK: - Methods

    @MainActor
    func start(params _: Any?...) {
        let viewModel = ___VARIABLE_sceneName___SceneViewModel()
        viewModel.coordinator = self
        
        let scene = ___VARIABLE_sceneName___Scene(viewModel: viewModel)
        let viewController = UIHostingController(rootView: scene)

        navigationController.setViewControllers([viewController], animated: false)
    }

    func stop() { fatalError("Should not be stopped.") }
}
