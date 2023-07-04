//
//  AddFoodview.swift
//  IAte
//
//  Created by DA M1 MAC 89 on 2023/07/04.
//

import SwiftUI

struct AddFoodview: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    @Environment (\.dismiss) var  dismiss
    
    @State private var name = ""
    @State private var calories =  0
    
    
    var body: some View {
        Form {
            Section{
                TextField ("Food name", text: $name)
                
                VStack{
                    
                    Text("h")
                }
            }
        }
    }
}

struct AddFoodview_Previews: PreviewProvider {
    static var previews: some View {
        AddFoodview()
    }
}
