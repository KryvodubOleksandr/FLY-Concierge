//
//  FilterView.swift
//  FLY Concierge
//
//  Created by Alexander Sharko on 10.06.2021.
//

import SwiftUI

struct FilterView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var filter = Filters()
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 1) {
                        Group {
                            Text("CATEGORY")
                                .padding(.leading)
                                .padding(.trailing)
                                .padding(.top, 5)
                                .padding(.bottom, 5)
                            ToggleRow(isOn: $filter.eat, title: "Eat", imageName: "star")
                            ToggleRow(isOn: $filter.drink, title: "Drink", imageName: "star")
                            ToggleRow(isOn: $filter.play, title: "Play", imageName: "star")
                        }
                        
                        Group {
                            Text("DISTANCE")
                                .padding(.leading)
                                .padding(.trailing)
                                .padding(.top, 5)
                                .padding(.bottom, 5)
                            ToggleRow(isOn: $filter.close, title: "Keep It Close", imageName: "star")
                            ToggleRow(isOn: $filter.travel, title: "I`m Down To Travel", imageName: "star")
                        }
                        Group {
                            Text("ATTIRE")
                                .padding(.leading)
                                .padding(.trailing)
                                .padding(.top, 5)
                                .padding(.bottom, 5)
                            ToggleRow(isOn: $filter.casual, title: "Casual", imageName: "star")
                            ToggleRow(isOn: $filter.trendy, title: "Trendy", imageName: "star")
                            ToggleRow(isOn: $filter.formal, title: "Formal", imageName: "star")
                        }
                        Group {
                            Text("PRICE")
                                .padding(.leading)
                                .padding(.trailing)
                                .padding(.top, 5)
                                .padding(.bottom, 5)
                            ToggleRow(isOn: $filter.cheap, title: "Cheap", imageName: "star")
                            ToggleRow(isOn: $filter.reasonable, title: "Reasonable", imageName: "star")
                            ToggleRow(isOn: $filter.expensive, title: "Expensive", imageName: "star")
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
