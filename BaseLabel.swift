//
//  BaseLabel.swift
//  Pods
//
//  Created by Malte Schoppe on 22.10.21.
//

import UIKit

class BaseLabel: UILabel {
    
    init(text: String? = nil,
         textColor: UIColor? = .label,
         textAlignment: NSTextAlignment = .left,
         textStyle: UIFont.TextStyle,
         textWeight: UIFont.Weight = .regular,
         numberOfLines: Int = 1,
         textToFitWidth: Bool = false) {
        
        super.init(frame: .zero)
        
        self.text = text
        self.textColor = textColor
        self.textAlignment = textAlignment
        self.font = .preferredFont(for: textStyle, weight: textWeight)
        self.numberOfLines = numberOfLines
        
        self.adjustsFontSizeToFitWidth = textToFitWidth
        
        self.isUserInteractionEnabled = true
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    
    var textInsets = UIEdgeInsets.zero {
        didSet { invalidateIntrinsicContentSize() }
    }
    
    override func textRect(forBounds bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
        let textRect = super.textRect(forBounds: bounds, limitedToNumberOfLines: numberOfLines)
        let invertedInsets = UIEdgeInsets(top: -textInsets.top, left: -textInsets.left, bottom: -textInsets.bottom, right: -textInsets.right)
        return textRect.inset(by: invertedInsets)
    }
    
    override func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: textInsets))
    }
}

extension UIFont {
    static func preferredFont(for style: TextStyle, weight: Weight) -> UIFont {
        let metrics = UIFontMetrics(forTextStyle: style)
        let desc = UIFontDescriptor.preferredFontDescriptor(withTextStyle: style)
        let font = UIFont.systemFont(ofSize: desc.pointSize, weight: weight)
        return metrics.scaledFont(for: font)
    }
}

