//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

protocol ___VARIABLE_sceneName___ViewModelProtocol: AnyObject {
    
    // MARK: - Properties
    
    var coordinator: ___VARIABLE_sceneName___Coordinator? { get set }
    
}

final class ___VARIABLE_sceneName___ViewModel: ___VARIABLE_sceneName___ViewModelProtocol {
    
    // MARK: - Properties
    
    weak var coordinator: ___VARIABLE_sceneName___Coordinator?
    
    // MARK: - Lifecycle
    
    init() {
        configure()
    }
    
    // MARK: - Setup Methods
    
    private func configure() { }
    
    // MARK: - Methods
    
    // MARK: - Private Methods
    
}
