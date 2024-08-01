//
// mapList.swift
// metroMate
//
// Created by Scholar on 7/30/24.
//
import SwiftUI
struct mapList: View {
    var trainList = ["1", "2", "3", "4", "5", "6", "7", "A", "C", "E", "B", "D", "F", "M", "G", "J", "Z", "L", "N", "Q", "R", "W", "S", "SIR"]
    @State private var selectedTrain : String = "1"
    @State private var selectedStop : String = "Van Cortlandt Park-242 St"
    var stopList = ["Van Cortlandt Park-242 St","238 St","231 St", "Marble Hill-225 St", "215 St", "207 St", "Dyckman St", "191 St", "181 St", "168 St-Washington Hts", "157 St","145 St","137 St-City College","125 St","116 St-Columbia University","Cathedral Pkwy (110 St)","103 St","96 St","86 St","79 St","72 St","66 St-Lincoln Center","59 St-Columbus Circle","50 St","Times Sq-42 St","34 St-Penn Station","28 St","23 St","18 St","14 St","Christopher St-Stonewall","Houston St","Canal St","Franklin St","Chambers St","WTC Cortlandt","Rector St","South Ferry"]
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
                            }
                            Text("Train 1 ")
                                .font(.title)
                                .padding(20)
                                .padding(.leading, 80)
                        }
                        Image("Train1")
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
                                    .listRowSeparatorTint(Color(red: 0.0, green: 0.16, blue: 0.37, opacity: 0.5))
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
                .background(Color.white)
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
            
            if(selectedTrain == "2"){
                Train2()
            }
            else if(selectedTrain == "6"){
                Train6()
            }
        }
    }
}
#Preview {
    mapList()
}
