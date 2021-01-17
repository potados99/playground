//
//  ContentView.swift
//  playground
//
//  Created by Potados on 2020/12/21.
//

import SwiftUI

struct ContentView: View {

    @State private var showingAlert = false

    var body: some View {
        
        VStack {
            Text("히히히히히히ㅣㅎ!")
                .padding()
            
            Button(action: {showingAlert = true}) {
                Text("눌러바!")
                    .padding(15)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(40)
            }
            .alert(isPresented: $showingAlert) {
                Alert(
                    title: Text("오"),
                    message: Text("잘했어"),
                    dismissButton: .default(Text("응")))
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
