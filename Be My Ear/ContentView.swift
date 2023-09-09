//
//  ContentView.swift
//  Be My Ear
//
//  Created by Mohmed Ahmed on 28/08/2023.
//
import SwiftUI
struct ContentView: View {
    @State private var FirstLanguageOptions = ["English"]
    @State private var FirstLanguageselectedOption = 0
    @State private var SecondLanguageSelectedOption = 0
    @State private var SecondLanguageOptions = ["International SL" , "France SL"]
    @State private var LText:String = ""
    var body: some View {
        NavigationView {
            TabView {
                VStack{
                    
                    HStack {
                        Picker("Select an option", selection: $FirstLanguageselectedOption) {
                            ForEach(0..<FirstLanguageOptions.count, id: \.self) { index in
                                Text(FirstLanguageOptions[index])
                                    
                            }
                            
                        }.pickerStyle(MenuPickerStyle())
                            .foregroundColor(.white)
                            .tint(Color.black)
                        
                        
                        
                        Image(systemName: "arrow.left.arrow.right")
                            .padding()
                        Picker("Select an option", selection: $SecondLanguageSelectedOption) {
                            ForEach(0..<SecondLanguageOptions.count, id: \.self) { index in
                                Text(SecondLanguageOptions[index])
                                    
                            }
                            
                        }.pickerStyle(MenuPickerStyle())
                            .foregroundColor(.white)
                        .padding()
                        .tint(.black)
                    }
                    
//                    .background(Color.teal)
                    
                        .cornerRadius(20)
                    
                    Spacer()
                    
                    ZStack(alignment: .topLeading){
                        TextEditor(text:$LText)
                            .padding(5)
                            
                        
                    }
                    .font(.body)
                    .background(Color.teal)
                    .cornerRadius(8)
                    .frame(height:100)
                    Spacer()
                    HStack{
                        Button("Split") {
                            var txt_array = Array(LText)
                            print(txt_array[2])
                        }
                    }
                    ZStack(){
                      
                    }
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    
                }
                
                .frame(maxWidth: .infinity,maxHeight:.infinity)
                .background(.white)
                .tabItem {
                    Label("Translator" , systemImage: "character.phonetic")
                    
                    
                }
            }
            .navigationTitle("Translator")
                .padding()
                
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
