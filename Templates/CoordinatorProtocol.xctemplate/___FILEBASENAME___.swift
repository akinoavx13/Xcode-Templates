//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

@MainActor
protocol CoordinatorProtocol: AnyObject {
    // MARK: - Properties

    var parentCoordinator: CoordinatorProtocol? { get set }
    var children: [CoordinatorProtocol] { get set }

    // MARK: - Methods

    func start(params: Any?...)
    func stop()
}

extension CoordinatorProtocol {
    func childDidStop(_ child: CoordinatorProtocol?) {
        for (index, coordinator) in children.enumerated() where coordinator === child {
            children.remove(at: index)
        }
    }
}
