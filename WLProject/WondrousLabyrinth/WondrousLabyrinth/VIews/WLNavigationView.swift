//
//  WLNavigationView.swift
//  WondrousLabyrinth
//
//  Created by 吉彦臻 on 2024/4/1.
//

import UIKit

class WLNavigationView: UIView {
    
    var needShowSeparatorLine = true
    
    static let height: CGFloat = 0.5
    
    private let separatorLine = UIView()
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        backgroundColor = .systemBackground
        
        separatorLine.backgroundColor = .separator
        addSubview(separatorLine)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if needShowSeparatorLine {
            separatorLine.frame = CGRect(x: 0, y: 50 - 0.5, width: frame.width, height: 0.5)
        } else {
            separatorLine.frame = CGRect()
        }
    }
    
}
