//
//  MovieDetailsView.swift
//  SwiftUIDay2
//
//  Created by shaikha aljenaidel on 8/22/20.
//  Copyright © 2020 shaikha aljenaidel. All rights reserved.
//

import SwiftUI

struct MovieDetailsView: View {
    var ImageName: String
    var MovieName: String
    var MainCharacters: [String]
    var body: some View {
        ZStack{
            Group{
            Image(ImageName)
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .blur(radius: 40)
            Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4636608715))
            }
            .edgesIgnoringSafeArea(.all)
            
            
            VStack(alignment: .center){
                Image(ImageName)
                    .resizable()
                    .scaledToFit()
                .frame(width: 300)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 6))
                Text(MovieName)
                    .font(.system(size: 50))
                    .bold()
                Text(MainCharacters.joined(separator: " , "))
                    .font(.title)
                Spacer()
            }
            .padding(.vertical)
            .foregroundColor(.white)
            .shadow(radius: 10)
        
            
            
    }
    }
}

struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsView(ImageName: "theLittleMermaid", MovieName: "The Little Mermaid", MainCharacters: ["Arial", "Ursula", "Sabestian"])
    }
}
