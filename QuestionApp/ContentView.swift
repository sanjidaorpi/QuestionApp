//  ContentView.swift
//  QuestionApp
//  Created by Sanjida Orpi.

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Question App")
                    .font(.title)
                    .foregroundColor(.pink)
                    .padding()
                NavigationLink(destination: PageOne()) {
                    Text("Question 1")
                        .font(.headline)
                        .foregroundColor(.pink)
                        .padding()
                }
                NavigationLink(destination: PageTwo()) {
                    Text("Question 2")
                        .font(.headline)
                        .foregroundColor(.pink)
                        .padding()
                }
                NavigationLink(destination: PageThree()) {
                    Text("Question 3")
                        .font(.headline)
                        .foregroundColor(.pink)
                        .padding()
                }
                Spacer()
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
        .padding(.top, 60)
        
    }
}

struct PageOne: View {
    var choices = ["Pink", "Blue", "Black", "Green"]
    @State private var selectedChoice: String?
    
    var body: some View {
        VStack {
            Text("Favorite color?")
                .font(.headline)
                .padding()
            List(choices, id: \.self) { choice in Button(action: {
                selectedChoice = choice}) {
                HStack {
                    Text(choice)
                    .foregroundColor(.primary)
                    Spacer()
                    if selectedChoice == choice {
                        Image(systemName: "checkmark")
                    }
                }
            }
            }
        }
    }
}

struct PageTwo: View {
    var choices = ["Cat", "Dog", "Bunny", "Alien"]
    @State private var selectedChoice: String?
    
    @State private var selection = 0
    let images = ["food1","food2","food3","food4","food5"]
    
    @State private var cat = false
    @State private var dog = false
    @State private var bunny = false
    @State private var alien = false
    
    var body: some View {
        VStack {
            Text("Favorite pet?")
                .font(.headline)
                .padding()
            List(choices, id: \.self) {
                choice in Button(action: {
                selectedChoice = choice}) {
                HStack {
                    Text(choice)
                    .foregroundColor(.primary)
                    Spacer()
                    if selectedChoice == choice {
                        Image(systemName: "checkmark")
                    }
                }
            }
            }
        }
    }
}

struct PageThree: View {
    var choices = ["Strawberry", "Mango", "Watermelon", "Banana"]
    @State private var selectedChoice: String?
    
    var body: some View {
        VStack {
            Text("Favorite fruit?")
                .font(.headline)
                .padding()
            List(choices, id: \.self) {
                choice in Button(action: {
                selectedChoice = choice}) {
                HStack {
                    Text(choice)
                    .foregroundColor(.primary)
                    Spacer()
                    if selectedChoice == choice {
                        Image(systemName: "checkmark")
                    }
                }
            }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
