//
//  SwiftUIView.swift
//  
//
//  Created by devdchaudhary on 04/07/23.
//

import SwiftUI

struct SwiftUIView: View {
    
    let data: [Int] = [1,2,3,4,5,6,7]
    
    var body: some View {
        VStack {
            PagedScrollingView(data: data, showVerticalIndicator: false, showHorizontalIndicator: false, swiftUIView: SingleView(data: data))
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
