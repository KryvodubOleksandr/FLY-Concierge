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
        SettingsList {
            LogoImageView("logo")
            Text(AppContent.description)
                .padding(Padding.medium)
                .font(.subheadline)
            SettingsGroup {
                SettingsRowView(text: "Terms of Service")
                SettingsRowView(text: "Private Policy")
                SettingsRowView(text: "Rate the app")
                SettingsRowView(text: "Licences")
                SettingsRowView(text: "Contact us")
            }
            SettingsToggleView(isOn: $allowAnalytics, title: "Allow to use personal data for analytics")
        }
        .addBackground()
        .toolbar {
            ToolbarItem(placement: .principal) { Text("Settings").font(.title3) }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsListView()
    }
}
