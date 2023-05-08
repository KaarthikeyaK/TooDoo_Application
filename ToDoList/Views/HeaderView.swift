//
//  HeaderView.swift
//  ToDoList
//
//  Created by KAARTHIKEYA K on 03/05/23.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let background: Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .frame(width: UIScreen.main.bounds.width * 3, height: UIScreen.main.bounds.height * 0.45)
                .foregroundColor(background)
            VStack{
                Text(title)
                    .foregroundColor(Color.white)
                    .font(.custom("Futura", size: 50))
                    .bold()
                Text(subtitle)
                    .foregroundColor(Color.white)
                    .font(.custom("Futura", size: 20))
                    .italic()
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title", subtitle: "Subtitle", background: .blue)
    }
}
