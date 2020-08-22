//
//  Modifiers.swift
//  SwiftUIDay2
//
//  Created by shaikha aljenaidel on 8/22/20.
//  Copyright © 2020 shaikha aljenaidel. All rights reserved.
//

import Foundation
import SwiftUI

struct ThekrModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .padding()
        .multilineTextAlignment(.center)
        .font(.system(size: 15, weight: .bold, design: .default))
    }
}

struct CounterModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .foregroundColor(.white)
        .font(.system(size: 50))
        .padding()
        .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
        .clipShape(Circle())
    
    }
}
