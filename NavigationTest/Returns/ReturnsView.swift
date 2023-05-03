//
//  ReturnsView.swift
//  NavigationTest
//
//  Created by Jasmine Patel on 24/04/2023.
//

import SwiftUI

struct ReturnsView: View {
    
    var body: some View {
        ZStack {
            NavigationStack{
                VStack {
                    Divider()
                        .frame(width: 350)
                    Spacer()
                    NavigationLink {
                        CreateReturnView()
                    } label: {
                        Text("Create Return")
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
                    Text("CREATE RETURN")
                }
            }
        }
    }
}

struct ReturnsView_Previews: PreviewProvider {
    static var previews: some View {
        ReturnsView()
    }
}
