//
//  EmailView.swift
//  NavigationTest
//
//  Created by Jasmine Patel on 25/04/2023.
//

import SwiftUI

struct EmailView: View {
    
    var body: some View {
        NavigationStack() {
            VStack {
                Spacer()
                NavigationLink {
                    ConfirmReturnView()
                } label: {
                    Text("Next")
                }
                .frame(minWidth: 292, minHeight: 60)
                .foregroundColor(Color(.white))
                .font(.title3.weight(.semibold))
                .background(Color(.black))
                Spacer()
            }
        }
        .navigationTitle("")
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("EMAIL")
            }
        }
    }
}

struct EmailView_Previews: PreviewProvider {
    static var previews: some View {
        EmailView()
    }
}
