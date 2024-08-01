//
// locationList.swift
// metroMate
//
// Created by Scholar on 7/30/24.
//

import SwiftUI
struct locationList: View {
    var body: some View {
        ZStack{
            Color(.white)
                .ignoresSafeArea()
            ScrollView{
                VStack {
                    Text("Most Popular Locations!")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .bold()
                        .foregroundColor(.navy)
                        .padding()
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.navy)
                        VStack{
                            Spacer(minLength: 20)
                            Image("summit")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .scaledToFit()
                                .frame(width: 300)
                            Text("Summit One Vanderbilt")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.skyBlue)
                            Text("45 E 42nd St, New York, NY 10017")
                                .font(.title3)
                                .foregroundColor(.paleYellow)
                            Text("Closest Station: Grand Central-42 St Station")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.paleYellow)
                                .padding(20)
                        }
                    }
                    .padding(20)
                    
                    
                    
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.navy)
                        VStack{
                            Spacer(minLength: 20)
                            
                            VStack{
                                Image("empire")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .scaledToFit()
                                    .frame(width: 300)
                                Text("Empire State Building")
                                    .font(.title2)
                                    .bold()
                                    .foregroundColor(.skyBlue)
                                Text("20 W 34th St., New York, NY 10001")
                                    .font(.title3)
                                    .foregroundColor(.paleYellow)
                                Text("Closest Station: 34nd Street - Penn Station")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.paleYellow)
                                    .padding(20)
                            }
                        }
                    }
                    .padding(20)
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.navy)
                        VStack{
                            Spacer(minLength: 20)
                            Image("citifield3")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .scaledToFit()
                                .frame(width: 300)
                            Text("Citi Field")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.skyBlue)
                            Text("41 Seaver Wy, Queens, NY 11368")
                                .font(.title3)
                                .foregroundColor(.paleYellow)
                            Text("Closest Station: Mets–Willets Point station (IRT Flushing Line)")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.paleYellow)
                                .padding(20)
                        }
                        
                    }
                    .padding()
                    
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.navy)
                        VStack{
                            Spacer(minLength: 20)
                            Image("littleisland")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .scaledToFit()
                                .frame(width: 300)
                            Text("Little Island")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.skyBlue)
                            Text("Pier 55 in Hudson River Park at, W 13th St, New York, NY 10014")
                                .font(.title3)
                                .foregroundColor(.paleYellow)
                                .multilineTextAlignment(.center)
                            Text("Closest Station: 14th Street (6/7/8th Avenue)")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.paleYellow)
                                .padding(20)
                        }
                    }
                    .padding()
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.navy)
                        VStack{
                            Spacer(minLength: 20)
                            Image("museum")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .scaledToFit()
                                .frame(width: 300)
                            Text("Solomon R. Guggenheim Museum")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.skyBlue)
                            Text("1071 5th Ave, New York, NY 10128")
                                .font(.title3)
                                .foregroundColor(.paleYellow)
                            Text("Closest Station: 4/5/6 at 86th Street")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.paleYellow)
                                .padding(20)
                            
                        }
                    }
                    .padding()
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.navy)
                        VStack{
                            Spacer(minLength: 20)
                            Image("market")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .scaledToFit()
                                .frame(width: 300)
                            Text("Chelsea Market")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.skyBlue)
                            Text("75 9th Ave, New York, NY 10011")
                                .font(.title3)
                                .foregroundColor(.paleYellow)
                            Text("Closest Station: 14th Street/8th Avenue Station")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.paleYellow)
                                .padding(20)
                            
                        }
                    }
                    .padding()
                    
                }
            }
            
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
    }
}
#Preview{
    locationList()
}
