//
//  ContentView.swift
//  TrimMate
//
//  Created by Irvan P. Saragi on 04/06/23.
//

import SwiftUI
//MARK: Test
//MARK: AMAN COY
//MARK: Test2

//AMAN KAH CUY??

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("Asisstant")
            Image("Rectangle")
                .offset(x: -134, y: -250)
            Image("Path")
                .offset(x: 134, y: -200)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Primary"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
