//
//  OldView_.swift
//  Landmarks
//
//  Created by Vobagav on 24.07.2022.
//

import UIKit
import SwiftUI

class OldView_: UIView {
    @IBOutlet var contentView: UIView!
    
    // MARK: - Initializers
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        
        Bundle.main.loadNibNamed("OldView_", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
    }
    
}

struct OldView: UIViewRepresentable {

    func makeUIView(context: Context) -> UIView {
        OldView_()
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        UIView.animate(withDuration: <#T##TimeInterval#>, delay: <#T##TimeInterval#>, usingSpringWithDamping: <#T##CGFloat#>, initialSpringVelocity: <#T##CGFloat#>, options: <#T##UIView.AnimationOptions#>, animations: <#T##() -> Void#>, completion: <#T##((Bool) -> Void)?##((Bool) -> Void)?##(Bool) -> Void#>)
    }
}
