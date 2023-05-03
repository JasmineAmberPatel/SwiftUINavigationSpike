//
//  ReturnSuccessfulView.swift
//  NavigationTest
//
//  Created by Jasmine Patel on 25/04/2023.
//

import SwiftUI

struct ReturnSuccessfulView: View {
    var body: some View {
        VStack {
            Text("Return Successful")
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("RETURN SUCCESSFUL")
            }
        }
    }
}

struct ReturnSuccessfulView_Previews: PreviewProvider {
    static var previews: some View {
        ReturnSuccessfulView()
    }
}
