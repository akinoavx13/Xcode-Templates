//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

final class ___VARIABLE_sceneName___ViewController: UIViewController {
    
    // MARK: - Outlets
    
    // MARK: - Properties
    
    var viewModel: ___VARIABLE_sceneName___ViewModelProtocol!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        
        bind(to: viewModel)
    }
    
    // MARK: - Setup Methods
    
    private func configure() { }
    
    private func bind(to viewModel: ___VARIABLE_sceneName___ViewModelProtocol) { }
    
    // MARK: - Methods
    
    // MARK: - Actions
    
    // MARK: - Private Methods
}
