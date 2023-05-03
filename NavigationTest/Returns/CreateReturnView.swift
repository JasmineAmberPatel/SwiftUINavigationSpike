//
//  CreateReturnView.swift
//  NavigationTest
//
//  Created by Jasmine Patel on 25/04/2023.
//

import SwiftUI

struct CreateReturnView: View {
    var body: some View {
        VStack() {
            Divider()
            VStack() {
                Text("ORDER NUMBER: T00011122223333")
                Text("RETURN AVAILABLE UNTIL: 10.06.23")
            }
            Divider()
            Text("2 ITEMS")
                .frame(alignment: .leading)
            HStack {
                Image("tshirt")
                    .resizable()
                    .frame(width: 100, height: 120)
                VStack(alignment: .leading){
                    Text("£29.99")
                    Text("THE NORTH FACE")
                    Text("Fine Line T-Shirt")
                    HStack {
                        Text("WASABI")
                        Spacer()
                        Text("SIZE 6")
                    }
                }
                .padding()
            }
            .padding()
            Divider()
            HStack {
                Image("tshirt")
                    .resizable()
                    .frame(width: 100, height: 120)
                VStack(alignment: .leading){
                    Text("£29.99")
                    Text("THE NORTH FACE")
                    Text("Fine Line T-Shirt")
                    HStack {
                        Text("WASABI")
                        Spacer()
                        Text("SIZE 6")
                    }
                }
                .padding()
            }
            .padding()
            Spacer()
            NavigationLink {
                EmailView()
            } label: {
                Text("RETURN ITEM")
            }
            .frame(minWidth: 292, minHeight: 60)
            .foregroundColor(Color(.white))
            .font(.title3.weight(.semibold))
            .background(Color(.black))
            .padding(.bottom, 20)
        }
        .padding()
        .navigationTitle("")
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("CREATE RETURN")
            }
        }
    }
}

struct CreateReturnView_Previews: PreviewProvider {
    static var previews: some View {
        CreateReturnView()
    }
}
