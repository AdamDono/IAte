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
    
    @State private var showingAddView = false
    var body: some View {
      NavigationView
        {
            VStack (alignment: .leading) {
                
            }
            .navigationTitle("iCalaries")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
