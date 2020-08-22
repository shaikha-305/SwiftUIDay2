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
        List{
            HStack(alignment: .center){
                Image("theLittleMermaid")
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .clipShape(Circle())
                
                VStack(alignment: .leading){
                    Text("The Little Mermaid")
                        .font(.title)
                    Text(["Arial", "Ursula", "Sabestian"].joined(separator: " , "))
                }
            }.padding(.vertical)

        }
    }
}

struct CW5_Previews: PreviewProvider {
    static var previews: some View {
        CW5()
    }
}
