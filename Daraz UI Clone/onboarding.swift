// OnBoardingFirst.swift file by Farial Mahmod

import SwiftUI

struct OnBoardingFirst: View {
    
    @State var goToMiddle = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.F_5_F_5.ignoresSafeArea()
                
                VStack {
                    
                    HStack {
                        Image(.progressFirst)
                        Image(.cross)
                    }
                    
                    HStack {
                        Image(.logoSmall)
                        Image(.chatTiny).offset(x: 8)
                        
                        Text("Hello, I’m your personal shopping assistant Welcome to Daraz Clone! Shop and save more\nwith the best online deals").frame(width: 290, height: 72).background(.white).cornerRadius(8)
                            .font(.custom("Manrope-Regular", size: 13))
                        
                    }
                    
                    Spacer()
                    
                    Image(.onboard2).resizable().frame(width: 140, height: 140)
                    
                    Text(" ")
                    
                    
                    Text("No. 1 Online Shopping\n            Platform")
                        .font(.custom("Manrope-Regular", size: 32))
                    
                    Text(" ")
                    
                    Text("Buy everything on Daraz Clone").font(.custom("Manrope-Regular", size: 15)) .foregroundStyle(._5555).padding(.horizontal)
                    
                    Text("Best price, everyday").font(.custom("Manrope-Regular", size: 15)) .foregroundStyle(._5555).padding(.horizontal)
                    
                    Spacer()
                    
                    HStack {   Text("I already have an account").foregroundStyle(.F_95506).font(.custom("Manrope-Regular", size: 16))        }.frame(width: 343, height: 54).background(.white).cornerRadius(30)
                    
                    HStack {   Text("Get Started").foregroundStyle(.white).font(.custom("Manrope-Regular", size: 16))        }.frame(width: 343, height: 54).background(.F_95506).cornerRadius(30)
                        .onTapGesture {
                            goToMiddle = true
                        }
                    
                    Text(" ")
                    
                }
                
                NavigationLink(
                    destination: OnboardingMiddle().navigationBarBackButtonHidden(true).toolbar(.hidden, for: .tabBar),
                    isActive: $goToMiddle,
                    label: {EmptyView()})
                
            }.accentColor(Color.black)

        }
    }
}

#Preview {
    OnBoarding()
}
