import Foundation
import SwiftUI

public struct PagedScrollingView<Content: View>: UIViewRepresentable {

    let showVerticalIndicator: Bool
    let showHorizontalIndicator: Bool
    let swiftUIView: Content
    
    public init(showVerticalIndicator: Bool, showHorizontalIndicator: Bool, swiftUIView: Content) {
        self.showVerticalIndicator = showVerticalIndicator
        self.showHorizontalIndicator = showHorizontalIndicator
        self.swiftUIView = swiftUIView
    }

    public func makeUIView(context: Context) -> some UIView {
        
        let view = UIScrollView()
        
        let childView = UIHostingController(rootView: swiftUIView)
        childView.view.frame = .init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        
        view.contentSize = .init(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        view.addSubview(childView.view)
        
        view.showsVerticalScrollIndicator = showVerticalIndicator
        view.showsHorizontalScrollIndicator = showHorizontalIndicator
        
        view.contentInsetAdjustmentBehavior = .never
        view.isPagingEnabled = true
        view.delegate = context.coordinator
        
        return view
    }
    
    public func updateUIView(_ uiView: UIViewType, context: Context) {
        
        
    }
    
    public func makeCoordinator() -> Coordinator {
        
        return Coordinator()
    }
    
    public class Coordinator: NSObject, UIScrollViewDelegate {
        
        public func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            
            
        }
        
    }
    
}
