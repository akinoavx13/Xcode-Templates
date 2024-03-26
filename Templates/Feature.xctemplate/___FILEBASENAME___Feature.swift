//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ Apptico. All rights reserved.
//

import ComposableArchitecture
import SwiftUI

@Reducer
struct ___VARIABLE_feature_name___Feature {
    @ObservableState
    struct State: Equatable {}

    enum Action {}

    // MARK: - Body

    var body: some ReducerOf<Self> {
        Reduce { _, _ in
            .none
        }
    }
}

struct CounterView: View {
    // MARK: - Properties

    let store: StoreOf<___VARIABLE_feature_name___Feature>

    // MARK: - Body

    var body: some View {
        EmptyView()
    }
}

#Preview {
    CounterView(
        store: Store(initialState: ___VARIABLE_feature_name___Feature.State()) {
            ___VARIABLE_feature_name___Feature()
        }
    )
}
