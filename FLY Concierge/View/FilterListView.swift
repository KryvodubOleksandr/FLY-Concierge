//
//  FilterView.swift
//  FLY Concierge
//
//  Created by Alexander Sharko on 10.06.2021.
//

import SwiftUI

struct FilterListView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var filter = Filter()
    
    var body: some View {
        NavigationView {
            ZStack {
                FilterList {
                    FilterGroup(name: "CATEGORY") {
                        FilterRowView(isOn: $filter.eat, title: "Eat", imageName: "mouth")
                        FilterRowView(isOn: $filter.drink, title: "Drink", imageName: "drop")
                        FilterRowView(isOn: $filter.play, title: "Play", imageName: "play")
                    }
                    FilterGroup(name: "DISTANCE") {
                        FilterRowView(isOn: $filter.close, title: "Keep It Close", imageName: "figure.walk")
                        FilterRowView(isOn: $filter.travel, title: "I`m Down To Travel", imageName: "car")
                    }
                    FilterGroup(name: "ATTIRE") {
                        FilterRowView(isOn: $filter.casual, title: "Casual", imageName: "circle")
                        FilterRowView(isOn: $filter.trendy, title: "Trendy", imageName: "hexagon")
                        FilterRowView(isOn: $filter.formal, title: "Formal", imageName: "square")
                    }
                    FilterGroup(name: "PRICE") {
                        FilterRowView(isOn: $filter.cheap, title: "Cheap", imageName: "arrow.down")
                        FilterRowView(isOn: $filter.reasonable, title: "Reasonable", imageName: "arrow.up.arrow.down")
                        FilterRowView(isOn: $filter.expensive, title: "Expensive", imageName: "arrow.up")
                    }
                }
                .addBackground()
                VStack {
                    Spacer()
                    applyButton
                }
                .padding()
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Filter")
            .navigationBarItems(leading: closeButton, trailing: resetButton)
        }
    }
    
    var closeButton: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            ImageButton("xmark.circle")
        }
    }
    var resetButton: some View {
        Button(action: {
            filter.reset()
        }) {
            ImageButton("trash")
        }
    }
    var applyButton: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            LargeButton()
        }
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FilterListView()
            FilterListView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 12")
        }
    }
}


