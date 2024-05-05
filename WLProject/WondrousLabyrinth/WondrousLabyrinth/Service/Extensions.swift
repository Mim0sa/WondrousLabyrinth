//
//  Extensions.swift
//  WondrousLabyrinth
//
//  Created by 吉彦臻 on 2024/4/10.
//

import UIKit

extension String {
    func width(withSize fontSize: CGFloat) -> CGFloat {
        let attributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: fontSize)]
        let size = (self as NSString).size(withAttributes: attributes)
        return size.width
    }
}
