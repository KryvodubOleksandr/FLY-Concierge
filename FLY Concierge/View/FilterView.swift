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
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 0) {
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
                        Rectangle().fill(Color.clear).frame(height: 60)
                            .padding()
                    }
                    .padding(.top, 4)
                }
                .background(Image("background")
                                .resizable()
                                .renderingMode(.template)
                                .aspectRatio(contentMode: .fill)
                                .opacity(0.1)
                )
                .navigationBarTitleDisplayMode(.inline)
                .navigationTitle("Filter")
                .navigationBarItems(leading: closeButton, trailing: resetButton)
                applyButton
            }
        }
    }
    var closeButton: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "xmark.circle")
                .font(.title3)
                .foregroundColor(.primary)
        }
    }
    var resetButton: some View {
        Button(action: {
            filter.reset()
        }) {
            Image(systemName: "trash")
                .foregroundColor(.primary)
                .font(.title3)
        }
    }
    var applyButton: some View {
        VStack {
            Spacer()
            Button(action: { presentationMode.wrappedValue.dismiss() }) {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(.systemTeal))
                    .frame(height: 60)
                    .overlay(Text("Apply")
                                .font(.title3)
                                .foregroundColor(Color(.black)))
            }
        }
        .padding()
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

struct FilterGroup<Content: View>: View {
    let content: Content
    let name: String
    
    init(name: String, @ViewBuilder content: () -> Content) {
        self.name = name
        self.content = content()
    }
    var body: some View {
        Group {
            Text(name)
                .padding(.leading)
                .padding(.trailing)
                .padding(.top, 5)
                .padding(.bottom, 5)
            VStack(spacing: 1) {
                content
                    .padding(10)
                    .background(Color(.systemGray4).opacity(0.8))
            }
            .cornerRadius(15)
        }
    }
}
