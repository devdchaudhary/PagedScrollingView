//
//  SwiftUIView 2.swift
//  
//
//  Created by devdchaudhary on 04/07/23.
//

import SwiftUI

struct SingleArrayView: View {
    
    let data: [Int]

    var body: some View {
        ForEach(data, id:\.self) { i in
            VStack {
                Text("This is data no \(i)")
                    .font(.system(15))
                    .foregroundColor(.black)
            }
        }
    }
}

struct SingleArrayView_Previews: PreviewProvider {
    static var previews: some View {
        SingleArrayView()
    }
}
