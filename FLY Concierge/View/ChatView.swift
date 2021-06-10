//
//  ChatView.swift
//  FLY Concierge
//
//  Created by Alexander Sharko on 09.06.2021.
//

import SwiftUI

struct ChatView: View {
    @StateObject var messages = MessageListViewModel()
    @State private var isShowingFilterView = false
    @State private var isShowingSettingsView = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink(destination: SettingsView(), isActive: $isShowingSettingsView) { EmptyView() }
                LazyVStack(alignment: .leading, spacing: 10) {
                    ForEach(messages.messages, id: \.text) { message in
                        MessageRowView(message: message)
                    }
                }
                .padding(5)
            }
            .background(Image("background")
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fill)
                            .opacity(0.1))
            .fullScreenCover(isPresented: $isShowingFilterView) {
                FilterView()
            }
            .navigationTitle("FLY")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading:
                                    Button(action: { isShowingFilterView.toggle() }){
                                        Image(systemName: "slider.horizontal.3")
                                            .font(.title3)
                                            .foregroundColor(.primary)
                                    }
                                   ,
                                trailing: Button(action: { isShowingSettingsView.toggle() }) {
                                    Image(systemName: "gearshape")
                                        .foregroundColor(.primary)
                                })
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ChatView()
            ChatView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 12")
        }
    }
}
