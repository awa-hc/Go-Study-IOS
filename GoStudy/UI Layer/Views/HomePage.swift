//
//  HomePage.swift
//  GoStudy
//
//  Created by Horacio Cortez on 13/10/2023.
//

import SwiftUI


struct HomePage: View {
    
    @State private var selection = 0
    
    
    var body: some View {
        VStack{
            HStack{
                Text("nashe")
                Text("Mobile app")
            }
            VStack{
                HStack{
                    Text("Tareas").font(.custom("Urbanist", size: 30)).fontWeight(.bold)
                    Spacer()
                }
            }
            HStack {
                
                SegmentedControl(selection: $selection)
                Spacer()
                
                
            }.padding(.bottom, 20)
            
            ScrollView{
                
                if selection == 0 {
                    Section0()
                } else if selection == 1 {
                    Section1()
                } else if selection == 2 {
                    Section2()
                }
            }
            
        }.padding(20)
        
    }
}




struct TaskCard: View {
    var Priority: String
    var Title: String
    var Description: String
    var Comments: Int
    var Files: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(Priority).fontWeight(.bold)
                    .foregroundStyle(getColorString(Priority))
                    .padding(5)
                    .background(getColorString(Priority).opacity(0.2))
                Spacer()
                Text("...").font(.custom("Urbanist", size: 20)).fontWeight(.black)
            }.padding(.bottom, 15)
            Text(Title).fontWeight(.bold).padding(.bottom, 8)
            Text(Description)
            Spacer()
            HStack {
                Circle().frame(width: 24)
                Circle().frame(width: 24)
                Circle().frame(width: 24)
                Spacer()
                Image(systemName: "ellipsis.bubble")
                Text("\(Comments) Comments").font(.custom("Urbanist", size: 14))
                Image(systemName: "folder")
                Text("\(Files) Files").font(.custom("Urbanist", size: 14))
                
            }
        }.padding()
            .frame(height: 208)
            .background(.gray.opacity(0.1))
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .padding(.bottom, 20)
    }
    
    func getColorString(_ string: String) -> Color {
        if string == "Hight" {
            return .red
        }
        else if string == "Low" {
            return .orange
        } else {
            return .black
        }
    }
    
}

struct Section0: View {
    var body: some View {
        VStack{
            TaskCard(Priority: "Low", Title: "Section0", Description: "Descripción...", Comments: 1, Files: 1)
            TaskCard(Priority: "Hight", Title: "Nashe", Description: "Descripción...", Comments: 12, Files: 41)
            TaskCard(Priority: "Hight", Title: "Nashe", Description: "Descripción...", Comments: 12, Files: 41)
            TaskCard(Priority: "Hight", Title: "Nashe", Description: "Descripción...", Comments: 12, Files: 41)
            TaskCard(Priority: "Hight", Title: "Nashe", Description: "Descripción...", Comments: 12, Files: 41)
        }.transition(.offset(x: 500))
    }
}
struct Section1: View {
    var body: some View {
        VStack{
        TaskCard(Priority: "Hight", Title: "Sectoin1", Description: "Descripción...", Comments: 12, Files: 41)
        TaskCard(Priority: "Hight", Title: "Nashe", Description: "Descripción...", Comments: 12, Files: 41)
        }.transition(.offset(x: 500))
    }
}
struct Section2: View {
    var body: some View {
        VStack{
        TaskCard(Priority: "Low", Title: "Section2", Description: "Descripción...", Comments: 1, Files: 1)
        TaskCard(Priority: "Low", Title: "Brainstorm", Description: "Descripción...", Comments: 1, Files: 1)
        TaskCard(Priority: "Low", Title: "Brainstorm", Description: "Descripción...", Comments: 1, Files: 1)
        TaskCard(Priority: "Hight", Title: "Nashe", Description: "Descripción...", Comments: 12, Files: 41)
        }.transition(.offset(x: 500))
    }
    
}


#Preview {
    HomePage()
}
