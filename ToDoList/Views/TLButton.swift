//
//  ButtonView.swift
//  ToDoList
//
//  Created by KAARTHIKEYA K on 04/05/23.
//

import SwiftUI

struct TLButton: View {
    
    let title : String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        
        Button {
            action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: UIScreen.main.bounds.width - 40, height: 40)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(Color.white)
                    .font(.custom("Futura", size: 20))
                    .bold()
            }
        }
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(title: "Title", background: .blue) {
            // Action
        }
    }
}
