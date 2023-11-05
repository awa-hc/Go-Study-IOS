//
//  LoginVIew.swift
//  GoStudy
//
//  Created by Horacio Cortez on 20/09/2023.
//
import SwiftUI

struct StartPageView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
          let topColor: Color = .orange
          let bottomColor: Color = colorScheme == .light ? .white : .black
          NavigationView{
                    ZStack(alignment: .top){
                              BackgroundView(topColor: topColor, bottomColor: bottomColor , backgroundImage: "LoginBackground")
                    
                    VStack (spacing: 20){
                              Spacer()
                              Image("IconWhite").resizable().frame(width:150, height: 150).aspectRatio(contentMode: .fit).shadow(color: .black, radius: 7, x: 0, y: 5)
                              Spacer()
                              NavigationLink(destination: LoginPageView(), label: {
                                        ButtonLoginView(buttonLoginText: "Login", buttonLoginTextColor: .white, buttonLoginBackgroundColor: .orange, buttonLoginBorderColor: .orange, buttonLoginBorderWidth: 1)
                              }).navigationTitle("").foregroundColor(.black)
                              NavigationLink(destination: Text("Register"), label: {
                                        ButtonLoginView(buttonLoginText: "Registrarse", buttonLoginTextColor: .black, buttonLoginBackgroundColor: .white, buttonLoginBorderColor: .black, buttonLoginBorderWidth: 1)
                              } ).padding(.bottom, 80)
                              
                    }.padding()
              }
         }
    }
}


struct StartPageView_Previers: PreviewProvider {
    static var previews: some View  {
              Group {
                        StartPageView()
              }
    }
}


struct ButtonLoginView: View {
    var buttonLoginText: String
    var buttonLoginTextColor: Color
    var buttonLoginBackgroundColor: Color
    var buttonLoginBorderColor: Color
    var buttonLoginBorderWidth: Int

    var body: some View {
                    
          Text(buttonLoginText).frame(width: 330, height:50)
                    .foregroundColor(buttonLoginTextColor)
                    .background(buttonLoginBackgroundColor)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(buttonLoginBorderColor, lineWidth: CGFloat(buttonLoginBorderWidth)))
                    .cornerRadius(10)
          }
}



struct BackgroundView: View {
    @Environment(\.colorScheme) var colorScheme
          
    var topColor: Color
    var bottomColor: Color
    var backgroundImage: String
    
    var body: some View {
    
        Image(backgroundImage).resizable().aspectRatio(contentMode: .fill).frame(maxWidth: .infinity)
        
        .mask(LinearGradient(gradient: Gradient(colors: [.clear, topColor, .clear]),startPoint: .top, endPoint: .bottom))
        .opacity(0.8).ignoresSafeArea()
        LinearGradient(gradient: Gradient(colors: [topColor, topColor,bottomColor, bottomColor, bottomColor]),startPoint: .top,endPoint: .bottom)
        .ignoresSafeArea()
        .opacity(0.8)
    }
}
