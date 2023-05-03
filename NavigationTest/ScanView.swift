//
//  ScanView.swift
//  NavigationTest
//
//  Created by Jasmine Patel on 27/01/2023.
//

import SwiftUI

struct ScanView: View {
    
    var body: some View {
        ZStack {
            NavigationView {
                VStack {
                    Divider()
                        .frame(width: 350)
                    HStack {
                        Image(systemName: "bolt.fill")
                            .padding([.leading, .trailing], 20)
                        Image(systemName: "magnifyingglass")
                        Text("Enter item number...")
                            .foregroundColor(Color.gray)
                        Spacer()
                    }
                    .frame(width: 400, height: 40)
                    Divider()
                        .frame(width: 250, height: 2)
                        .overlay(.black)
                        .padding(.bottom, 20)
                    VStack {
                        Image("hannah")
                            .resizable()
                    }
                    .frame(width: 400, height: 500)
                    Spacer()
                }
            }
        }
        .navigationTitle("SEARCH")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ScanView_Previews: PreviewProvider {
    static var previews: some View {
        ScanView()
    }
}
