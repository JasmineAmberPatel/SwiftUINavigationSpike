//
//  DiscountView.swift
//  NavigationTest
//
//  Created by Jasmine Patel on 27/04/2023.
//

import SwiftUI

struct DiscountView: View {
    @EnvironmentObject var modelData: ModelDataManager
    @EnvironmentObject var navigationStateManager: NavigationStateManager
    
    var body: some View {
        VStack(alignment: .leading) {
            List {
                Text("\(modelData.discounts[0].name)")
                Text("\(modelData.discounts[1].name)")
            }
        }
        .navigationTitle("DISCOUNTS")
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

struct DiscountView_Previews: PreviewProvider {
    static var previews: some View {
        DiscountView()
    }
}
