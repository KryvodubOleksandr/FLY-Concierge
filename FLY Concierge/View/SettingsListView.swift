//
//  SettingsView.swift
//  FLY Concierge
//
//  Created by Alexander Sharko on 09.06.2021.
//

import SwiftUI

struct SettingsListView: View {
    @State private var allowAnalytics = false
    
    var body: some View {
        NavigationView {
            SettingsList {
                LogoImage("logo")
                Text(AppContent.description)
                    .padding(Padding.small)
                    .font(.subheadline)
                SettingsGroup {
                    SettingsRowView(text: "Terms of Service")
                    SettingsRowView(text: "Private Policy")
                    SettingsRowView(text: "Rate the app")
                    SettingsRowView(text: "Licences")
                    SettingsRowView(text: "Contact us")
                }
                FilterRowView(isOn: $allowAnalytics, title: "Allow to use personal data for analytics", imageName: "")
                    .font(.subheadline)
                    .padding(Padding.small)
            }
            .addBackground()
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsListView()
    }
}
