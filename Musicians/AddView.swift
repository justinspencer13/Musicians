//
//  AddView.swift
//  Musicians
//
//  Created by Justin Spencer on 7/22/24.
//

import SwiftUI
import SwiftData

struct AddView: View {
    @State private var name: String = ""
    @State private var genre: String = "Country"
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss

    
    let genres = ["Country", "Rap", "Rock", "Jazz"]
    var body: some View {
        NavigationStack{
            
            List{
                Section("Enter Information"){
                    TextField("Name", text: $name)
                    TextField("Genre", text: $genre)
                }
                Section("Picker"){
                    Picker("Genre", selection: $genre) {
                        ForEach(genres, id: \.self) { genreOption in
                            Text(genreOption).tag(genreOption)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    
                    
                }
            }
            Section("Add Musician"){
                Button("Add") {
                  let newMusician = Musician(name: name, genre: genre)
                    modelContext.insert(newMusician)
                    dismiss()
                }
            }
        }
        .navigationTitle("Add Musician")
    }
    

    
}
#Preview {
    AddView()
}
