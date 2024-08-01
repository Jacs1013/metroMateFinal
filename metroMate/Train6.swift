//
//  Train6.swift
//  metroMate
//
//  Created by Scholar on 8/1/24.
//

import SwiftUI

struct Train6: View {
    var trainList = ["1", "2", "3", "4", "5", "6", "7", "A", "C", "E", "B", "D", "F", "M", "G", "J", "Z", "L", "N", "Q", "R", "W", "S", "SIR"]
    @State private var selectedTrain : String = "1"
    @State private var selectedStop : String = "Van Cortlandt Park-242 St"
    var stopList = ["Pelham Bay Park","Buhre Av","Middletown Rd","Westchester Sq-E Tremont Av","Zerega Av","Castle Hill Av","Parkchester","St Lawrence Av","Morrison Av-Soundview","Elder Av","Whitlock Av","Hunts Point Av","Longwood Av","E 149 St", "E 143 St-St Mary's St", "Cypress Av","Brook Av","3 Av-138 St","125 St", "116 St", "110 St", "103 St","96 St","86 St","77 St","68 St-Hunter College","59 St","51 St","Grand Central-42 St","33 St","28 St","23 St", "14 St-Union Sq","Astor Pl","Bleecker St","Spring St","Canal St", "Brooklyn Bridge-City Hall"]
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading, spacing: 0.0){
                    HStack{
                        Picker("trainList", selection: $selectedTrain){
                            ForEach(trainList, id: \.self){
                                trainList in Text(trainList)
                            }
                            .padding(.leading, 30)
                            //fix
                            
                        }
                        Text("Train 6")
                            .font(.title)
                            .padding(20)
                            .padding(.leading, 80)
                    }
                    Image("Train6")
                        .resizable(resizingMode: .stretch)
                        .cornerRadius(40)
                    
                        .background(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color(red: 0.40, green: 0.86, blue: 0.57, opacity: 1.0), lineWidth: 15)
                        )
                        .aspectRatio(contentMode: .fit)
                        .padding([.trailing, .leading], 30)
                        .padding(.bottom, -20)
                }
                VStack{
                    List {
                        ForEach (stopList, id:\.self){ selectedStop in Text(selectedStop)
                                .foregroundColor(.black)
                                .cornerRadius(10)
                                .listRowBackground(Color(red: 0.99, green: 0.78, blue: 0.62, opacity: 0.0))
                                .listRowSeparatorTint(Color(red: 0.0, green: 0.16, blue: 0.37, opacity: 1.0))
                        }
                    }
                    .scrollContentBackground(.hidden)
                    .frame(width: 300, height: 1750)
                }
                .padding(.leading, 20)
                .padding(.trailing, 20)
                .background(Color(red: 0.99, green: 0.78, blue: 0.62, opacity: 0.0))
                .cornerRadius(40)
            }
           // .background(Color(red: 0.53, green: 0.78, blue: 0.62, opacity: 0.2))
            // greenbackground
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    NavigationLink(destination: ContentView()) {
                        Image("homeIcon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)}
                    .navigationBarBackButtonHidden(true)
                    Spacer()
                    NavigationLink(destination: mapList()) {
                        Image("mapIcon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)    }
                    .navigationBarBackButtonHidden(true)
                    Spacer()
                    NavigationLink(destination: locationList()) {
                        Image("buildingIcon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)}
                    .navigationBarBackButtonHidden(true)
                    Spacer()
                    NavigationLink(destination: favoriteList()) {
                        Image("heartIcon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)}
                    .navigationBarBackButtonHidden(true)
                }
                             }
        }
        .toolbarBackground(
            Color.skyBlue,
            for: .navigationBar)
        
    }
}
#Preview {
    Train6()
}



