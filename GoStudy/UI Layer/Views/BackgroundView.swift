//
//  BackgroundView.swift
//  GoStudy
//
//  Created by Horacio Cortez on 21/09/2023.
//

import SwiftUI

struct BackgroundColor: View{
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(.re))
    }
}
