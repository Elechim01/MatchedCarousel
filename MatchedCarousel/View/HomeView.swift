//
//  HomeView.swift
//  MatchedCarousel
//
//  Created by Michele Manniello on 16/07/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct HomeView: View {
//    Backgornd Will be current tab image
    @State var currenTab = "p1"
    var body: some View {
        ZStack{
//            Geometry Reader for getting Screen Size..
            GeometryReader{ proxy in
                let size = proxy.size
                Image(currenTab)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: size.width, height: size.height)
                    .cornerRadius(1)
                
            }.ignoresSafeArea()
//            material Effect..
            .overlay(.ultraThinMaterial)
//            Dark Effet..
            .colorScheme(.dark)
//            Carousel List...
            TabView(selection: $currenTab) {
//                Since where having 7 images...
                ForEach(1...7, id: \.self){ index in
//                    CarouselBody View...
                    CarouselBodyView(index: index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
    }
}

@available(iOS 15.0, *)
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
