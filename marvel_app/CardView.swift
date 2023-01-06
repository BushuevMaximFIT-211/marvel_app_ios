//
//  CardView.swift
//  marvel_app
//
//  Created by user225687 on 1/6/23.
//

import SwiftUI

struct CardView: View {
    let hero: HeroMarvel
    var body: some View {
        ZStack{
            Image(hero.name)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
