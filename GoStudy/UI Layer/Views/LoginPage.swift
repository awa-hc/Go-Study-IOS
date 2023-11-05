//
//  LoginPage.swift
//  GoStudy
//
//  Created by Horacio Cortez on 22/09/2023.
//

import SwiftUI

struct ResponseModel: Decodable {
    let token: String?
    
}
struct LoginPageView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var jwtToken = ""
    
    var body: some View {
        
        VStack {
            
            HStack{
                
                Text("Iniciar sesión")
                    .font(.custom("Urbanist-Black", size:36))
                    .fontWeight(.black)
                    .padding(.bottom, 20)
                Spacer()
            }
            
            
            .padding(.top, 100)
            
            TextField("Ingrese tu email", text: $email)
                .padding()
                .font(.custom("Urbanist-bold", size:15))
                .background(Color(.systemGray6))
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            TextField("Ingrese tu Contraseña", text: $email)
                .padding()
                .font(.custom("Urbanist-bold", size: 15))
                .background(Color(.systemGray6))
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            HStack {
                Spacer()
                Button(action: {
                    print("Olvidó su contraseña? button tapped")
                }) {
                    Text("Olvidó su contraseña?")
                        .font(.custom("Urbanist-Bold", size:17) )
                        .foregroundStyle(Color.gray)
                }
            }
            Button(action: {
                print("login button")
            }) {
                Text("Ingresar")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 331, height: 60)
                    .background(Color.orange)
                    .cornerRadius(15.0)
            }.padding(.top, 20)
            Spacer()
            HStack {
                Text("No tienes cuenta?")
                Button(action: {
                    print("Regístrate ahora button tapped")
                }) {
                    Text("Regístrate ahora")
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.orange)
                        .underline()
                }
            }
            
            
        }.navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: CustomBackButton())
            .navigationBarTitle("Inicio de sesion", displayMode: .inline)
            .padding(30)
    }
}

struct CustomBackButton: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image(systemName: "lessthan").resizable().aspectRatio(contentMode: .fit).frame(width: 30, height: 30).foregroundColor(.white).padding(.all, 10).background(Color(.gray)).cornerRadius(10)
            }
        }
    }
}



#Preview {
    LoginPageView()
}
