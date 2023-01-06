//
//  ContentView.swift
//  marvel_app
//
//  Created by user225687 on 1/6/23.
//

import SwiftUI
import SwiftUIPager


struct ContentView: View {
    @StateObject var page: Page = .first()
    let heroMarvelList: [HeroMarvel] = [
        HeroMarvel(name:"Deadpool", resID: "deadpool"),
        HeroMarvel(name:"Spider Man", resID: "spider_man"),
        HeroMarvel(name:"Dr Strange", resID: "dr_strange"),
        HeroMarvel(name:"Groot", resID: "groot"),
        HeroMarvel(name:"Iron Man", resID: "iron_man")    ]
    
    let pallete: [Color] = [.red, .blue, .purple, .green, .indigo]

    var body: some View {
        GeometryReader
        {
            geometry in
            VStack(spacing: 10) {

                Spacer(minLength: 35)
                Image( "marvel").resizable()
                    .scaledToFit()
                    .frame(height: 70)
                Text("Choose your hero").fontWeight(.bold)
                    .font(.system(size: 40)).foregroundColor(.white)
                Pager(page: self.page,
                      data: self.heroMarvelList,
                      id: \.self) {
                    self.pageView($0)
                }
                      .itemSpacing(10)
                      .horizontal()
                      .interactive(scale: 0.8)
                      .itemAspectRatio(0.8)
                
                
            }
                .background(Path {path in
                    
                path.move(to: CGPoint(x: geometry.size.width , y: 0))
                path.addLine(to: CGPoint(x: geometry.size.width, y: geometry.size.height))
                path.addLine(to: CGPoint(x: 0, y: geometry.size.height))
                    
                }.fill(pallete[page.index]).background(.gray))
                            }.ignoresSafeArea()}

    func pageView( _ hero: HeroMarvel) -> some View {
        CardView(hero: hero)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    }
