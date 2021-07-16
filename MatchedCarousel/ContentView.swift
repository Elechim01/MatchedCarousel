//
//  ContentView.swift
//  MatchedCarousel
//
//  Created by Michele Manniello on 16/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        if #available(iOS 15.0, *){
            HomeView()
        }else{
        Text("Hello, world!")
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
