//
//  WLHomeCellView.swift
//  WondrousLabyrinth
//
//  Created by 吉彦臻 on 2024/4/2.
//

import UIKit

class WLHomeCellView: UIView {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        layer.cornerRadius = 16
        
        backgroundColor = UIColor.wondrousLabyrinth.withAlphaComponent(0.15)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
    }
    
}
