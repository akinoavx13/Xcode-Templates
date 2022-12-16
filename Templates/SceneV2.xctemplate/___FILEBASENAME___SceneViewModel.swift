//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Combine

@MainActor
final class ___VARIABLE_sceneName___SceneViewModel: ObservableObject {
    // MARK: - Properties

    private weak var coordinator: ___VARIABLE_sceneName___SceneCoordinator?

    // MARK: - Lifecycle

    init(coordinator: ___VARIABLE_sceneName___SceneCoordinator? = nil) {
        self.coordinator = coordinator
    }
}

#if DEBUG

    extension ___VARIABLE_sceneName___SceneViewModel {
        static let preview = ___VARIABLE_sceneName___SceneViewModel()
    }

#endif
