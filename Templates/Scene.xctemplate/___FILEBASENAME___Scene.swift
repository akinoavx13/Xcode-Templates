//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import SwiftUI

struct ___VARIABLE_sceneName___Scene: View {
    // MARK: - Properties

    @StateObject var viewModel: ___VARIABLE_sceneName___SceneViewModel

    // MARK: - Body

    var body: some View {
        Text("Hello, World")
    }
}

#if DEBUG

struct ___VARIABLE_sceneName___Scene_Previews: PreviewProvider {
    static var previews: some View {
        ___VARIABLE_sceneName___Scene(viewModel: ___VARIABLE_sceneName___SceneViewModel.preview)
    }
}

#endif
