//
//  Train2.swift
//  metroMate
//
//  Created by Scholar on 8/1/24.
//

import SwiftUI

struct Train2: View {
    var trainList = ["1", "2", "3", "4", "5", "6", "7", "A", "C", "E", "B", "D", "F", "M", "G", "J", "Z", "L", "N", "Q", "R", "W", "S", "SIR"]
    @State private var selectedTrain : String = "2"
    @State private var selectedStop : String = "Van Cortlandt Park-242 St"
    var stopList = ["Wakefield-241 St", "Nereid Av", "233 St","225 St","219 St","Gun Hill Rd","E 180 St","West Farms Sq-E Tremont Av","174 St","Freeman St","Simpson St","Intervale Av","Prospect Av","Jackson Av","3 Av-149 St","149 St-Grand Concourse","135 St", "125 St","116 St","Central Park North (110 St)","96 St","72 St","Times Sq-42 St","34 St-Penn Station","14 St","Chambers St","Park Place","Fulton St","Wall St","Clark St","Borough Hall","Hoyt St","Nevins St","Atlantic Av-Barclays Ctr","Bergen St","Grand Army Plaza","Eastern Pkwy-Brooklyn Museum","Franklin Av-Medgar Evers College","President St-Medgar Evers College","Sterling St","Winthrop St","Church Av", "Beverly Rd","Newkirk Av-Little Haiti","Flatbush Av-Brooklyn College"]
    var body: some View {
        ZStack{
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
                            Text("Train 2")
                                .font(.title)
                                .padding(20)
                                .padding(.leading, 80)
                        }
                        Image("Train2")
                            .resizable(resizingMode: .stretch)
                            .cornerRadius(40)
                        
                            .background(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color(red: 0.9, green: 0.1, blue: 0.0, opacity: 1.0), lineWidth: 15)
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
                        .frame(width: 300, height: 2100)
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
            
            
            if(selectedTrain == "1"){
                mapList()
            }
            else if(selectedTrain == "6"){
                Train6()
            }
        }
    }
}
#Preview {
    Train2()
}


