//
//  MovementView.swift
//  SongSearch2
//
//  Created by Ian McCabe on 3/27/22.
//

import SwiftUI

struct MovementRow: View {
    
    var movement: String
    var number: Int
    
    var pieceNumeral: String {
        var integerValue = number
        var numeralString = ""
        let mappingList: [(Int, String)] = [(1000, "M"), (900, "CM"), (500, "D"), (400, "CD"), (100, "C"), (90, "XC"), (50, "L"), (40, "XL"), (10, "X"), (9, "IX"), (5, "V"), (4, "IV"), (1, "I")]
        for i in mappingList {
            while (integerValue >= i.0) {
                integerValue -= i.0
                numeralString += i.1
            }
        }
        return numeralString
    }
    
    var body: some View {
        HStack {
            Text(pieceNumeral + ". " + movement)
                .padding()
//                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
                .font(.title)
                //.border(.gray, width: 5)
                .cornerRadius(5)
            Spacer()
        }
        .border(.gray, width: 5)
    }
}

struct MovementR_Previews: PreviewProvider {
    static var previews: some View {
        MovementRow(movement: "Moderato", number: 1)
    }
}
