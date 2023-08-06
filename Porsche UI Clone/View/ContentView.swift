//  ContentView.swift
//  iOS App Designs

import SwiftUI

struct ContentView: View {

    var body: some View {
        
        // Bottom Navigation Tabs - names are self-explanatory
        TabView{
        
            Home().tabItem{
                Image(systemName: "car").foregroundColor(.red)
                Text("Vehicle")
            }
        
            MapView().tabItem{
                Image(systemName: "map")
                Text("Map")
            }
            
            DiscoverView().tabItem{
                Image(systemName: "doc")
                Text("Discover")
            }
            
            AccountView().tabItem{
                Image(systemName: "person")
                Text("Account")
            }
        }.accentColor(.red)
    }
        }

    
// Home View (focus)
struct Home : View{
    
    var body: some View{
        
        Group{

            NavigationStack{
                
                VStack(alignment: .leading){
                    
                    Text("Welcome").font(.title2).bold().padding(.top, 52)
                    
                    Text("Nice to see you!").font(.system(size: 19)).padding(.top, 1)
                    
                    Text("Please login to see \"My Garage\".").font(.system(size: 19)).padding(.bottom, 1)
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.all, 9)
                
                // the prime image at the centre
                Image("porsche-3").scaledToFit().overlay(){
                    
                    Link("  Login  ", destination: URL(string: "https://identity.porsche.com")!)
                        .foregroundColor(.black)
                        .font(.title2)
                        .shadow(radius: 25)
                        .fontWeight(.bold)
                        .frame(width: 299, height: 51)
                        .padding(.horizontal,20)
                        .background(.clear)
                        .border(.black).bold()
                }
                
                Group{
                    
                    Text("Recommendations").padding().font(.title).bold().frame(maxWidth: .infinity, alignment: .leading)

                    // A scrollable horizontal stack with card-like items
                    ScrollView(.horizontal){
                        
                        ZStack{
                            
                            HStack{
                                
                                // Card-like views
                                
                                ConfigureCarView()
                            
                                PodcastView()
                                
                                FinderView()
                                
                            }
                                
                            }
                            
                        }
                    }.offset(y: -75)
                }
                
            }
        }
    }

// configurator portion
struct ConfigureCarView : View {
    var body: some View{
        VStack{
            Text("Car Configurator").bold().font(.title3)
            Text("Your dream car").font(.title3).foregroundColor(.red)
        }
        .frame(maxWidth: 225)
        .padding()
        .background(
            Link(destination: URL(string: "https://www.porsche.com/usa/modelstart/")!){
                Image("configurator").resizable().scaledToFit().opacity(0.55)
            }
        )
    }
}

// podcast portion
struct PodcastView : View {
    var body: some View{
        
        VStack{
            Text("Podcast").bold().font(.title3).foregroundColor(.white)
            Text("Listen the latest").font(.title3).foregroundColor(.cyan)
        }
        .frame(maxWidth: 225)
        .padding()
        .background(
            Link(destination: URL(string: "https://newsroom.porsche.com/en/")!){
                Image("podcast").resizable().scaledToFit()
            }
        )
    }
}


struct FinderView : View {
    var body: some View{
        
        VStack{
            Text("Finder").bold().font(.title3).foregroundColor(.white)
            Text("Find near you").font(.title3).foregroundColor(.cyan)
        }
        .frame(maxWidth: 225)
        .padding()
        .background(
            Link(destination: URL(string: "https://finder.porsche.com/in/en-IN")!){
                Image("finder").resizable().scaledToFit()
            }
        )

    }
}

// preview of the screen
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
