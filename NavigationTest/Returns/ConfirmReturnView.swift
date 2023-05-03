//
//  ConfirmReturnView.swift
//  NavigationTest
//
//  Created by Jasmine Patel on 25/04/2023.
//

import SwiftUI

struct ConfirmReturnView: View {
    var body: some View {
        VStack {
            Spacer()
            NavigationLink {
                ReviewView()
            } label: {
                Text("Next")
            }
            .frame(minWidth: 292, minHeight: 60)
            .foregroundColor(Color(.white))
            .font(.title3.weight(.semibold))
            .background(Color(.black))
            Spacer()
        }
        .navigationTitle("")
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("CONFIRM RETURN")
            }
        }
    }
}

struct ConfirmReturnView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmReturnView()
    }
}
