//
//  ContentView.swift
//  SwiftUIDay2
//
//  Created by shaikha aljenaidel on 8/22/20.
//  Copyright © 2020 shaikha aljenaidel. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var counter = ["0", "0", "0"]
    var body: some View {
        VStack{
            ThekerButton(counter: $counter[0])
            ThekerButton(counter: $counter[1])
            ThekerButton(counter: $counter[2])
//            HStack{
//                Text("سبحان الله وبحمده").font(.largeTitle)
//                Button(action: {
//                    self.counter[1] = String(Int(self.counter[1])! + 1)
//                }) {
//                    Text(counter[1])
//                        .font(.largeTitle)
//                        .foregroundColor(.white)
//                }.frame(width: 100, height: 100, alignment: .center)
//                    .background(Color.yellow)
//                    .clipShape(Circle())
//                    .padding()
//            }
//            HStack{
//                Text("الحمدلله").font(.largeTitle)
//                Button(action: {
//                    self.counter[2] = String(Int(self.counter[2])! + 1)
//                }) {
//                    Text(counter[2])
//                        .font(.largeTitle)
//                        .foregroundColor(.white)
//
//                }.frame(width: 100, height: 100, alignment: .center)
//                    .background(Color.yellow)
//                    .clipShape(Circle())
//                    .padding()
//            }
//            .padding(.leading, 133)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ThekerButton: View {
    @Binding var counter: String
    var body: some View {
        HStack{
            Text("استغفر الله العظيم").font(.largeTitle)
            Button(action: {
                self.counter = String(Int(self.counter)! + 1)
            }) {
                Text(counter)
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }.frame(width: 100, height: 100, alignment: .center)
                .background(Color.yellow)
                .clipShape(Circle())
                .padding()
        }
    }
}
