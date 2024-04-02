//
//  WLNavigationView.swift
//  WondrousLabyrinth
//
//  Created by 吉彦臻 on 2024/4/1.
//

import UIKit

class WLNavigationView: UIView {
    
    static let height: CGFloat = 0.5
    
    let separatorLine = UIView()
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        backgroundColor = .systemBackground
        
        separatorLine.backgroundColor = .separator
        addSubview(separatorLine)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        separatorLine.frame = CGRect(x: 0, y: 50 - 0.5, width: frame.width, height: 0.5)
    }
    
}
