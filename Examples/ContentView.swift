//
//  SwiftUIView.swift
//  
//
//  Created by devdchaudhary on 04/07/23.
//

import SwiftUI

public struct ContentView: View {
    
    @State var data: [Model] = []
    
    var body: some View {
        PagedScrollingView(data: data, showVerticalIndicator: false, showHorizontalIndicator: false, swiftUIView: ForEachView(data: $data))
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .onAppear {
                for i in 0...14 {
                    let newModel = Model(number: i)
                    data.append(newModel)
                }
            }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
