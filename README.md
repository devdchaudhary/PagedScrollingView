# SwiftUI-PagedScrollingView

A Package that uses UIScrollView to allow users to use a paging scrollView inside SwiftUI Views 
via the UIViewRepresentable Protocol

Requirements

iOS 15,
Swift 5.0
Xcode 13.0+

Installation

Swift Package Manager

To integrate SwiftUI-PagedScrollingView into your Xcode project, specify it in Package Dependancies > Click the "+" button > Copy and paste the URL below:

```https://github.com/devdchaudhary/SwiftUI-PagedScrollingView```

set branch to "master"

Check SwiftUI-PagedScrollingView

Click Add to Project

Usage

Step 1 : Import ```SwiftUI_PagedScrollingView```

Step 2 : Call the PagedScrollingView Constructor

```
import SwiftUI
import SwiftUI_PagedScrollingView

struct ContentView: View {
    
    @State var data: [Model] = []
    
    var body: some View {
        PagedScrollingView(data: data, showVerticalIndicator: false, showHorizontalIndicator: false, swiftUIView: SingleView(data: data))
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .onAppear {
                for i in 0...14 {
                    let newModel = Model(number: i)
                    data.append(newModel)
                }
            }
    }
}
```

You can pass a boolean for showing vertical or horizontal indicators.

Then inside your ForEach View using a ForEach loop create your single item view. 

```
import SwiftUI

struct Model: Hashable {
    
    let id = UUID()
    var number: Int
    
}

struct SingleView: View {
    
    let data: [Model]
    
    var body: some View {
        ForEach(data, id: \.id) { i in
            Image(i.number.description)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .onAppear {
                    print("image")
                }
        }
    }
}

```




