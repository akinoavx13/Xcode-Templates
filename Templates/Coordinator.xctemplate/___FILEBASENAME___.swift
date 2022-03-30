//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit.UINavigationController

protocol ___FILEBASENAME___Route { }

protocol ___FILEBASENAME___Protocol: AnyObject {
    
    // MARK: - Properties
    
    var parentCoordinator: ___FILEBASENAME___Protocol? { get set }
    var children: [___FILEBASENAME___Protocol] { get set }
    var navigationController: UINavigationController { get set }
    
    // MARK: - Methods
    
    func start()
    func stop()
    func navigate(to route: ___FILEBASENAME___Route)
}

// MARK: - ChildDidStop -

extension CoordinatorProtocol {
    func childDidStop(_ child: ___FILEBASENAME___Protocol?) {
        for (index, coordinator) in children.enumerated() where coordinator === child {
            children.remove(at: index)
        }
    }
}
