//
//  SLANG.swift
//  BLOSSOM WORDS
//
//  Created by Celina Tong on 8/4/23.
//

import SwiftUI

struct SLANG: View {
    
    
    @State var showDetails = false
       var slangs = ["slangone","slangtwo","slangthree","slangfour","slangfive"]
   @State private var randomIndex = 0
       var imageName = ""
       
    var body: some View {
        
        ZStack{
            
            (Color("YELLOW"))
                .ignoresSafeArea()
                .overlay(
                    
        VStack {
           
            Text("Slang/Common Phrases")
                .font(.title)
                .multilineTextAlignment(.center)
            
            if showDetails {
                Image(slangs[randomIndex])
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            Group{
                Button("Click here for slang word of the day", action: {
                    self.showDetails.toggle()
                    if self.showDetails == true {
                        self.randomIndex = Int.random(in:0..<slangs.count)
                    }
                })
                
            }
             }
        .padding(.top)
        )
        }
        
    }
}

struct SLANG_Previews: PreviewProvider {
    static var previews: some View {
        SLANG()
    }
}
