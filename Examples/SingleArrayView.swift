//
//  SwiftUIView 2.swift
//  
//
//  Created by devdchaudhary on 04/07/23.
//

import SwiftUI

struct SingleArrayView: View {
    
    let data: [Model]

    var body: some View {
        ForEach(data, id: \.self) { i in
            VStack {
                Text("Number is \(i.number)")
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        }
    }
}

struct SingleArrayView_Previews: PreviewProvider {
    static var previews: some View {
        SingleArrayView()
    }
}
