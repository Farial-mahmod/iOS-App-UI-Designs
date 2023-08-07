//  DiscoverView.swift
//  iOS App Designs
//  Created by Farial Mahmod on 8/5/23.

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        
        ZStack{
            
            VStack{
                    // Title text
                    Text("Discover Porsche").font(.title)
                
                    // image taken from Pinterest
                    Image("porsche-6")
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom, 95)
                    .overlay(alignment: .center){
                        
                        VStack(alignment: .leading, spacing: 7){
                            
                            Text("Receive Exclusive Content")
                                .font(.title).bold().foregroundColor(.white)
                            
                            Text("\nPlease login or signup\nfor exclusive events")
                                .font(.title3).bold().foregroundColor(.white).padding(.bottom, 30)
                            
                            
                            HStack(alignment: .center) {
                                
                                // Login-Signup button redirects to their web application
                                
                                Link("  Login or Sign up     \(Image(systemName: "greaterthan.square.fill"))", destination: URL(string: "https://identity.porsche.com")!)
                                //   .padding(.top, 155)
                                    .foregroundColor(.white)
                                    .font(.title2)
                                    .shadow(radius: 25)
                                    .fontWeight(.bold)
                                    .frame(width: 335, height: 51)
                                    .background(.red)
                                    .border(.black).bold()
                            }

                        }.padding(.top, 255)
                    }
            }.padding(.vertical, 25)
        }
        }
}

// preview of the screen
struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
