//
//  HobbiesDetails.swift
//  Hello Me!
//
//  Created by André Wozniack on 10/03/23.
//

import Foundation
import SwiftUI

struct HobbiesDetails : View {
    @State private var currentIndex = 0
    @State var hobbie: HobbiesModel
    
    
    var body: some View {
        VStack{
            Text(hobbie.hobbie).font(.title)
            TabView {
                ForEach(hobbie.images, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFit()
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
    }
}
