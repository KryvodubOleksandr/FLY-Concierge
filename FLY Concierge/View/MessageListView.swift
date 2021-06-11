//
//  ChatView.swift
//  FLY Concierge
//
//  Created by Alexander Sharko on 09.06.2021.
//

import SwiftUI

struct MessageListView: View {
    @StateObject var messages = MessageListViewModel()
    @State private var isShowingFilterView = false
    @State private var isShowingSettingsView = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink(destination: SettingsListView(), isActive: $isShowingSettingsView) { EmptyView() }
                MessageStack {
                    ForEach(messages.messages, id: \.text) { message in
                        MessageRowView(message: message)
                    }
                }
            }
            .addBackground()
            
            .fullScreenCover(isPresented: $isShowingFilterView) {
                FilterListView()
            }
            
            .navigationTitle("FLY")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: filterButton ,trailing: settingsButton)
        }
    }
    
    var filterButton: some View {
        Button(action: { isShowingFilterView.toggle() }){
            ImageButton("slider.horizontal.3")
        }
    }
    var settingsButton: some View {
        Button(action: { isShowingSettingsView.toggle() }) {
            ImageButton("gearshape")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MessageListView()
            MessageListView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 12")
        }
    }
}
