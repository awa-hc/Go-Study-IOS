//
//  SegmentedControl.swift
//  GoStudy
//
//  Created by Horacio Cortez on 20/10/2023.
//

import SwiftUI

struct SegmentedControl: View {
    @Binding var selection: Int
    var body: some View {
        HStack {
            Button {
                withAnimation(.easeInOut(duration: 0.5)) {
                    selection = 0
               
                }            
            } label: {
                HStack{
                    Text("To Do").foregroundStyle(selection == 0 ? .white : .black).font(.custom("Urbanist", size: 15)).fontWeight(.bold)
                    Circle().frame(width: 9)
                }.padding(10).background(selection == 0 ? .orange : .gray.opacity(0.2)).clipShape(RoundedRectangle(cornerRadius: 40))
            }
            Button {
                withAnimation(.easeInOut(duration: 0.5)) {
                    selection = 1
                }
    
            
            } label: {
                HStack{
                    Text("On Progress").foregroundStyle(selection == 1 ? .white : .black).font(.custom("Urbanist", size: 15)).fontWeight(.bold)
                    Circle().frame(width: 9)
                }.padding(10).background(selection == 1 ? .orange : .gray.opacity(0.2)).clipShape(RoundedRectangle(cornerRadius: 40))
            }
            Button {
                withAnimation(.easeInOut(duration: 0.5)) {
                    selection = 2
                }
            
            } label: {
                HStack{
                    Text("Done").foregroundStyle(selection == 2 ? .white : .black).font(.custom("Urbanist", size: 15)).fontWeight(.bold)
                    Circle().frame(width: 9)
                }.padding(10).background(selection == 2 ? .orange : .gray.opacity(0.2)).clipShape(RoundedRectangle(cornerRadius: 40))
            }
        }
        .font(.custom("Urbanist", size: 15))
        .foregroundStyle(.gray)
    }
}

#Preview {
    SegmentedControl(selection: .constant(2))
}
