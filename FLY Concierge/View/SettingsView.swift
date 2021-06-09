//
//  SettingsView.swift
//  FLY Concierge
//
//  Created by Alexander Sharko on 09.06.2021.
//

import SwiftUI

struct SettingsView: View {
    @State private var allowAnalytics = false
    
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .frame(width: 150, height: 150, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            Text("text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text ")
            List {
                Text("Filter")
                Text("Terms of Service")
                Text("Private Policy")
                Text("Rate the app")
                Text("Licences")
                Text("Contact us")
                Toggle(isOn: $allowAnalytics, label: {
                    Text("Allow to use personal data for analytics")
                })
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
