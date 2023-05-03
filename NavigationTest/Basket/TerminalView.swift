//
//  TerminalView.swift
//  NavigationTest
//
//  Created by Jasmine Patel on 28/04/2023.
//

import SwiftUI

struct TerminalView: View {
    @EnvironmentObject var modelData: ModelDataManager
    @EnvironmentObject var navigationStateManager: NavigationStateManager
    
    var body: some View {
        VStack(alignment: .leading) {
            List {
                Text("\(modelData.terminals[0].name)")
                Text("\(modelData.terminals[1].name)")
                Text("\(modelData.terminals[2].name)")
            }
        }
        .navigationTitle("TERMINALS")
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

struct TerminalView_Previews: PreviewProvider {
    static var previews: some View {
        TerminalView()
    }
}
