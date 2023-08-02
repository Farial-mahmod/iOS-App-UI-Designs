//  ContentView.swift
//  iOS App UI Designs

import SwiftUI

struct ContentView: View {

    // alert variable to initiate the alert dialog box
    @State private var alert = false

    var body: some View {

        // top navigation bar
        NavigationStack{
            
            NavigationView  {
               
                Text("See what's happening\nin the world right now.").font(.system(size: 31)).padding().bold()
                                    .toolbar {
                        
                        ToolbarItem(placement: .principal) {
                            Image("twitter").resizable().scaledToFit()
                        }
                        
                        ToolbarItem(placement: .navigationBarLeading){
                        
                            // clicking Cancel redirects to Homescreen without logged in features
                            NavigationStack{
                                VStack{
                                    NavigationLink("Cancel"){
                                        HomeWithoutLogin().navigationBarBackButtonHidden(true)
                                    }.foregroundColor(.black)
                                }
                                
                            }
                            
                        }
                    }
            }
            

            // Google signup button design
            Button(action: {
                print("Google clicked.");
                alert = true
            }){
                Image("google")
                Text("Continue with Google")
            }.padding()
                .overlay(RoundedRectangle(cornerRadius: 45)
                    .stroke(Color.black, lineWidth: 1))
                .foregroundColor(.black)
                .background(.white)
                .bold().alert("This is only for UI.", isPresented: $alert){
                    Button("Continue", role: .cancel){
                        // alert box
                    }
                }
            
            Group{   Spacer()
                Spacer()
                Spacer()
                Spacer()
            }
            
            // Apple signup button design
            Button(action: {
                print("Apple clicked.");
                alert = true
            }){
                HStack{
                    Image("apple").frame(width: 13, height: 15).padding()

                    Text("Continue with Apple")
                }
            }.padding()
                .overlay(RoundedRectangle(cornerRadius: 45)
                    .stroke(Color.black, lineWidth: 1))
                .frame(width: 264, height: 54)
                .foregroundColor(.black)
                .background(.white)
                .bold()
                .alert("This is only for UI.", isPresented: $alert){
                    Button("Continue", role: .cancel){
                        // alert box
                    }
                }
            
            Group{
                Spacer()
                Spacer()
                Spacer()
                Spacer()
            }
            
            // Create Account button
            Button(action: {
                               alert = true
                           }) {
                               Text("Create Account")
                                   .foregroundColor(.white)
                                   .fontWeight(.bold)
                                   .frame(width: 213, height: 36)
                                   .padding(.all,20)
                                   .foregroundColor(.blue)
                                   .background(.black)
                                   .cornerRadius(45)
                                   .alert("This is only for UI.", isPresented: $alert){
                                       Button("Continue", role: .cancel){
                                           // alert box
                                       }
                                   }
                           }.padding(.bottom, 5)
            
            // These texts contain web URLs demonstration
            Text("By signing up, you agree to our [Terms](https://www.twitter.com), [Privacy Policy](https://www.twitter.com) and [Cookie Use](https://www.twitter.com).\n\nHave an account already? [Login](https://twitter.com)").padding().font(.system(size: 18))

        }

        }
    }

// preview of the screen
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
