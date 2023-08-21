//
//  TLButton.swift
//  ToDoList
//
//  Created by Евгений Гончаров on 21.08.2023.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
            .frame(maxWidth: .infinity)
            .frame(height: 55)
            .padding()
        }
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(title: "Button") {
            
        }
    }
}
