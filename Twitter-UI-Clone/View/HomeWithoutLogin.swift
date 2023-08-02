//
//  HomeWithoutLogin.swift
//  iOS App Designs
//
//  Created by Farial Mahmod on 7/27/23.
//

import SwiftUI
import AVKit

struct HomeWithoutLogin: View {
    
    @State var search = "Search Twitter"
    @State var alert = false
    
    var body: some View {
        
        @State var player = AVPlayer()

        VStack(alignment: .leading, spacing: 1){
            
            Group{
                    
               Text("Trends for you").font(.system(size: 23).bold()).padding(.bottom, 25)
                    
                    
                    Text("Trending Worldwide").padding(.bottom, 7)
                    Text("#peace").padding(.bottom, 17).bold()
                    
                    Text("Trending only on Twitter").padding(.bottom, 7)
                    Text("#dont_burn_religious_books").padding(.bottom, 17).bold()
                    
                    Text("Trending Worldwide").padding(.bottom, 7)
                    Text("#messi").padding(.bottom, 17).bold()
                    
                    Text("Trending only on Twitter").padding(.bottom, 7)
                    Text("#share_books").padding(.bottom, 17).bold()

                    }.padding(.horizontal, 5)
            
            Button("See more"){
                alert = true
            }.buttonStyle(.borderless).alert("This is only for UI.", isPresented: $alert){
                Button("OK", role: .cancel){
                    //
                }
                Button("Continue", role: .cancel){
                    //
                }
            }.padding(.horizontal, 5)
            
            Group{
                Spacer()
                
                VStack{
                    Text("Videos for you").font(.system(size: 23)).bold().frame(alignment: .leading)
                    Text("Check out these popular and trending videos for you").foregroundColor(.gray).padding().bold()
                }
                
                HStack(){
  
                    VideoPlayer(player: AVPlayer(url: URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!)).scaledToFit()
                                
                    VideoPlayer(player: AVPlayer(url: URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4")!)).scaledToFit()

                }.padding()

            }
               
        }
        
            .toolbar{

                ToolbarItem(placement: .navigationBarLeading){
                   
                    NavigationStack{
                        
                        NavigationLink(destination: Profile().navigationBarBackButtonHidden()){
                            
                                Image("profile")
                             //   Profile().navigationBarBackButtonHidden(true)
                            }.foregroundColor(.black)
                        
                    }
                }
                
                ToolbarItem(placement: .principal){
                    
                    HStack(){
                        Image("magnifyingglass").frame(alignment: .center)
                        TextField("", text: $search).frame(alignment: .center)
               
                    }.padding(.horizontal, 29)
                        .overlay(
                            RoundedRectangle(cornerRadius: 45).stroke(Color.gray, lineWidth: 2)
                        ).padding().frame(height: 9)
                }

                ToolbarItem(placement: .navigationBarTrailing){
                    Button(){alert = true} label: {
                        Image("settings").alert("This is only for UI.", isPresented: $alert){
                            Button("OK", role: .cancel){
                                //
                            }
                            Button("Continue", role: .cancel){
                                //
                            }
                        }
                    }
                }
 
            }.padding(.vertical, 5)
        
    }
}

struct HomeWithoutLogin_Previews: PreviewProvider {
    static var previews: some View {
        HomeWithoutLogin()
    }
}
