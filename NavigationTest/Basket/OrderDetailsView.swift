//
//  OrderDetailsView.swift
//  NavigationTest
//
//  Created by Jasmine Patel on 27/04/2023.
//

import SwiftUI

struct OrderDetailsView: View {
    @EnvironmentObject var navigationStateManager: NavigationStateManager

    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .center) {
                Spacer()
                Text("!THIS IS YOUR ORDER!")
                    .font(.largeTitle.weight(.bold))
                    .foregroundColor(Color.white)
                Button {
                    navigationStateManager.popToRoot()
                } label: {
                    Text("go to live basket")
                }
                .frame(minWidth: 292, minHeight: 50)
                .foregroundColor(Color(.white))
                .font(.title3.weight(.semibold))
                .background(Color(.black))
                Spacer()
            }
        }
        .navigationTitle("ORDER DETAILS")
        .background(
            Image("confetti")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
        )
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

struct OrderDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        OrderDetailsView()
    }
}
