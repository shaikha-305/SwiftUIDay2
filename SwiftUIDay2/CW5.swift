//
//  CW5.swift
//  SwiftUIDay2
//
//  Created by shaikha aljenaidel on 8/22/20.
//  Copyright © 2020 shaikha aljenaidel. All rights reserved.
//

import SwiftUI

struct CW5: View {
    var body: some View {
        NavigationView{
            List{
                
                
                NavigationLink(destination: MovieDetailsView(ImageName: "theLittleMermaid", MovieName: "The Little Mermaid", MainCharacters: ["Arial", "Ursula", "Sabestian"]),
                               label: {
                                MovieRow(ImageName: "theLittleMermaid", MovieName: "The Little Mermaid", MainCharacters: ["Arial", "Ursula", "Sabestian"])
                })
                
                
                NavigationLink(destination: MovieDetailsView(ImageName: "simba", MovieName: "The Lion King", MainCharacters: ["Simba", "Mufasa", "Nala"]),
                               label: {
                                MovieRow(ImageName: "simba", MovieName: "The Lion King", MainCharacters: ["Simba", "Mufasa", "Nala"])
                })
                
                
                NavigationLink(destination: MovieDetailsView(ImageName: "moana", MovieName: "Moana", MainCharacters: ["Moana", "Maui", "Tamatoa"]),
                               label: {
                                MovieRow(ImageName: "moana", MovieName: "Moana", MainCharacters: ["Moana", "Maui", "Tamatoa"])
                })
            }
            .navigationBarTitle("Movies")
        }
    }
}


struct CW5_Previews: PreviewProvider {
    static var previews: some View {
        CW5()
    }
}

struct MovieRow: View {
    var ImageName: String
    var MovieName: String
    var MainCharacters: [String]
    var body: some View {
        HStack(alignment: .center){
            Image(ImageName)
                .resizable()
                .scaledToFit()
            .frame(height: 150)
                .clipShape(Circle())
            
            VStack(alignment: .leading){
                Text(MovieName)
                    .font(.title)
                Text(MainCharacters.joined(separator: " , "))
            }
        }.padding(.vertical)
    }
}
