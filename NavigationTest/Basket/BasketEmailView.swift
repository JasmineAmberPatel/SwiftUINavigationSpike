//
//  BasketEmailView.swift
//  NavigationTest
//
//  Created by Jasmine Patel on 28/04/2023.
//

import SwiftUI

struct BasketEmailView: View {
    @EnvironmentObject var dataManager: ModelDataManager
    @EnvironmentObject var navigationStateManager: NavigationStateManager
    
    var body: some View {
        VStack {
            Button {
                navigationStateManager.popToRoot()
            } label: {
                Text("go to live basket")
            }
            VStack(alignment: .leading) {
                NavigationLink("REVIEW", value: BasketNavigation.orderDetails)
            }
            .frame(minWidth: 292, minHeight: 50)
            .foregroundColor(Color(.white))
            .font(.title3.weight(.semibold))
            .background(Color(.black))
            VStack(alignment: .leading) {
                NavigationLink("Terminals", value: BasketNavigation.terminal)
            }
        }
        .navigationTitle("EMAIL")
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    navigationStateManager.goBack()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color.black)
                }
            }
        }
    }
}

struct BasketEmailView_Previews: PreviewProvider {
    static var previews: some View {
        BasketEmailView()
    }
}
