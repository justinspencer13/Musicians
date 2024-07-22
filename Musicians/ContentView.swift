//
//  ContentView.swift
//  Musicians
//
//  Created by Justin Spencer on 7/22/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query var musicians: [Musician]
    
    @Environment(\.modelContext) var modelContext
    @State private var showingAddView = false
    
    var body: some View {
        NavigationStack{
            List {
                ForEach(musicians) { musician in
                    HStack{
                        VStack{
                            Text(musician.name)
                                .font(.headline)
                            Text(musician.genre)
                                .font(.subheadline)
                        }
                    }
                }
            }
                .navigationTitle("Musicians")
                
                .toolbar{
                    Button(action: {
                        showingAddView.toggle()
                    })
                    { Image(systemName: "plus")}
                }
                
            
            .sheet(isPresented: $showingAddView) {
                AddView()
            }
        }
        
    }
}

#Preview {
    ContentView()
}
