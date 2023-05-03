//
//  LiveBasketView.swift
//  NavigationTest
//
//  Created by Jasmine Patel on 27/04/2023.
//

import SwiftUI

struct LiveBasketView: View {
    @StateObject var navigationStateManager = NavigationStateManager()
    @StateObject var modelData = ModelDataManager()
    
    @EnvironmentObject private var tabController: TabController
    
    var body: some View {
        VStack() {
            NavigationStack(path: $navigationStateManager.selectionPath) {
                Spacer()
                Button("SCAN ITEM") {
                    tabController.open(.scan)
                }
                .frame(minWidth: 292, minHeight: 50)
                .foregroundColor(Color(.white))
                .font(.title3.weight(.semibold))
                .background(Color(.black))
                Group {
                    Text("2 ITEMS")
                    Divider()
                    HStack {
                        Image("tshirt")
                            .resizable()
                            .frame(width: 120, height: 140)
                        VStack(alignment: .leading){
                            Text("THE NORTH FACE")
                            Text("Fine Line T-Shirt")
                            Text("WASABI")
                            Text("SIZE 6")
                            Text("£29.99")
                        }
                        .padding()
                    }
                    .padding()
                    Divider()
                }
                VStack(alignment: .leading) {
                    NavigationLink("Discounts", value: BasketNavigation.discount)
                }
                HStack {
                    Text("None Selected")
                    Spacer()
                }
                .padding()
                .frame(width: 320, height: 50)
                .background(Color.gray.opacity(0.3))
                Spacer()
                Divider()
                    .frame(width: 350, height: 2)
                    .foregroundColor(.black)
                    .shadow(radius: 5)
                HStack {
                    Text("TOTAL")
                    Spacer()
                    Text("£59.98")
                }
                .padding()
                NavigationLink("CHECKOUT", value: BasketNavigation.email)
                    .frame(minWidth: 292, minHeight: 50)
                    .foregroundColor(Color(.white))
                    .font(.title3.weight(.semibold))
                    .background(Color(.black))
                    .navigationDestination(for: BasketNavigation.self) { state in
                        switch state {
                        case .orderDetails:
                            OrderDetailsView()
                        case .discount:
                            DiscountView()
                        case .email:
                            BasketEmailView()
                        case .terminal:
                            TerminalView()
                        }
                        
                    }
            }
            .environmentObject(modelData)
            .environmentObject(navigationStateManager)
            .navigationTitle("BASKET")
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("BASKET")
                }
            }
        }
        .padding()
    }
}

struct LiveBasketView_Previews: PreviewProvider {
    static var previews: some View {
        LiveBasketView()
    }
}
