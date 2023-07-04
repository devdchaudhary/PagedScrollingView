//
//  SwiftUIView.swift
//  
//
//  Created by devdchaudhary on 04/07/23.
//

import SwiftUI

struct SwiftUIView: View {
    
    let data: [Model] = [
        Model(number: 0),
        Model(number: 1),
        Model(number: 2),
        Model(number: 3),
        Model(number: 4),
        Model(number: 5),
        Model(number: 6)
    ]

    var body: some View {
        VStack {
            PagedScrollingView(data: data, showVerticalIndicator: false, showHorizontalIndicator: false, swiftUIView: ForEachView(data: data))
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
