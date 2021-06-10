//
//  FilterView.swift
//  FLY Concierge
//
//  Created by Alexander Sharko on 10.06.2021.
//

import SwiftUI

struct FilterView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var filter = Filter()
    
    var body: some View {
        NavigationView {
            ZStack {
                FilterList {
                    FilterGroup(name: "CATEGORY") {
                        FilterRow(isOn: $filter.eat, title: "Eat", imageName: "mouth")
                        FilterRow(isOn: $filter.drink, title: "Drink", imageName: "drop")
                        FilterRow(isOn: $filter.play, title: "Play", imageName: "play")
                    }
                    FilterGroup(name: "DISTANCE") {
                        FilterRow(isOn: $filter.close, title: "Keep It Close", imageName: "figure.walk")
                        FilterRow(isOn: $filter.travel, title: "I`m Down To Travel", imageName: "car")
                    }
                    FilterGroup(name: "ATTIRE") {
                        FilterRow(isOn: $filter.casual, title: "Casual", imageName: "circle")
                        FilterRow(isOn: $filter.trendy, title: "Trendy", imageName: "hexagon")
                        FilterRow(isOn: $filter.formal, title: "Formal", imageName: "square")
                    }
                    FilterGroup(name: "PRICE") {
                        FilterRow(isOn: $filter.cheap, title: "Cheap", imageName: "arrow.down")
                        FilterRow(isOn: $filter.reasonable, title: "Reasonable", imageName: "arrow.up.arrow.down")
                        FilterRow(isOn: $filter.expensive, title: "Expensive", imageName: "arrow.up")
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
            RoundedRectangle(cornerRadius: 15)
                .fill(Color(.systemTeal))
                .frame(height: 60)
                .overlay(Text("Apply")
                .font(.title3)
                .foregroundColor(Color(.black)))
        }
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FilterView()
            FilterView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 12")
        }
    }
}


