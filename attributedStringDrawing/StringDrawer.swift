//
//  StringDrawer.swift
//  attributedStringDrawing
//
//  Created by Preacher on 18.01.2021.
//  Copyright © 2021 Yulia Milovanova. All rights reserved.
//

import UIKit

class StringDrawer : UIView {
    @NSCopying var attributedText : NSAttributedString! {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    override func draw(_ rect: CGRect) {
        let r = rect.offsetBy(dx: 0, dy: 2)
        // just proving it's now an Option Set
        let opts : NSStringDrawingOptions = [.truncatesLastVisibleLine, .usesLineFragmentOrigin]
        
        let context = NSStringDrawingContext()
        context.minimumScaleFactor = 0.5 // does nothing
        
        self.attributedText.draw(with:r, options: opts, context: context)
        
        print(context.totalBounds)
    }
}
