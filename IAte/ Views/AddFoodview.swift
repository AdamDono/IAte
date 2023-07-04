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
    @State private var calories: Double =  0
    
    
    var body: some View {
        Form {
            Section{
                TextField ("Food name", text: $name)
                
                VStack{
                    
                    Text("Calories: \(Int(calories))")
                    Slider(value: $calories, in: 0...1000, step: 10)
                }
                .padding()
               HStack{
                   Spacer()
                   Button("Submit"){
                       DataColtroller().addFood(name: name, calories: calories, context: managedObjectContext)
                       
                       dismiss()
                       
                   }
                   Spacer()
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
