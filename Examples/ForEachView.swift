//
//  SwiftUIView 2.swift
//  
//
//  Created by devdchaudhary on 04/07/23.
//

import SwiftUI

struct ForEachView: View {
    
    @Binding var data: [Model]
    
    var body: some View {
        ForEach(data, id: \.id) { i in
            Image(i.number.description)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        }
    }
}

struct SingleArrayView_Previews: PreviewProvider {
    static var previews: some View {
        SingleArrayView()
    }
}
