//
//  SwiftUIView.swift
//  
//
//  Created by devdchaudhary on 04/07/23.
//

import SwiftUI

struct SwiftUIView: View {
    
    let data = [1,2,3,4,5,6,7]
    
    var body: some View {
        
        PagedScrollingView(swiftUIView: SingleArrayView(data: data))
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
