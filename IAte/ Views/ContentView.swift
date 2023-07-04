 //
//  ContentView.swift
//  IAte
//
//  Created by DA M1 MAC 89 on 2023/07/03.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment (\.managedObjectContext) var managedObjectContext
    
    //get data from the data base
    
    @FetchRequest (sortDescriptors: [SortDescriptor(\.date, order: .reverse)]) var food: FetchedResults <Food>
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
