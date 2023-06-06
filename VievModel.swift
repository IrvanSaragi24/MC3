//
//  VievModel.swift
//  TrimMate
//
//  Created by Irvan P. Saragi on 04/06/23.
//

import SwiftUI

struct VievModel: View {
    @State private var onboardingData : DataModel = DataModels[0]
    @State private var ActiveScrenn : Int = 1
    var body: some View {
        OnboardingView(onboardingData: $onboardingData, ActiveScrenn: $ActiveScrenn)
    }
}

struct VievModel_Previews: PreviewProvider {
    static var previews: some View {
        VievModel()
    }
}
