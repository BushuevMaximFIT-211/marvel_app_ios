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
        
        ZStack (alignment: .bottomLeading){
            Image(hero.resID).resizable().scaledToFill().frame(width: 300, height: 500)
            Text(hero.name)
                .padding()
                .font(.system(size: 40, weight: .bold))
                .foregroundColor(.white)
        }
        .cornerRadius(40)
        
    }
    }


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(hero: HeroMarvel.example)
    }
}
