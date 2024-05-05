//
//  WLCardDexFilterOptionScrollView.swift
//  WondrousLabyrinth
//
//  Created by 吉彦臻 on 2024/4/10.
//

import UIKit

class WLCardDexFilterOptionScrollView: UIScrollView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        showsVerticalScrollIndicator = false
        showsHorizontalScrollIndicator = false
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    private var optionViews: [WLCardDexFilterOptionCell] = []
    
    private var options: [WLCardDexFilterOption] = [] {
        didSet {
            reloadContentView()
        }
    }
    
    @discardableResult
    func removeOption(at index: Int) -> WLCardDexFilterOption? {
        if index < options.count {
            return options.remove(at: index)
        } else {
            return nil
        }
    }
    
    @discardableResult
    func appendOption(_ option: WLCardDexFilterOption) -> Bool {
        if options.count >= 20 {
            return false
        } else {
            options.append(option)
            return true
        }
    }
    
    private func reloadContentView() {
        optionViews.forEach { cell in cell.removeFromSuperview() }
        optionViews.removeAll()
        
        for i in 0..<options.count {
            var cell: WLCardDexFilterOptionCell!
            if i == 0 {
                cell = WLCardDexFilterOptionCell(frame: CGRect(x: 8, y: 6, width: options[i].filterDisplayString.width(withSize: 14) + 1 + 16 + 2 + 14, height: 24))
            } else {
                cell = WLCardDexFilterOptionCell(frame: CGRect(x: 8 + optionViews[i - 1].frame.maxX, y: 6, width: options[i].filterDisplayString.width(withSize: 14) + 1 + 16 + 2 + 14, height: 24))
            }
            cell.option = options[i]
            optionViews.append(cell)
            addSubview(cell)
        }
        contentSize = CGSize(width: (optionViews.last?.frame.maxX ?? 8) + 8, height: 36)
    }
    
}

class WLCardDexFilterOptionCell: UIView {
    
    let label = UILabel()
    let imageView = UIImageView(image: UIImage(systemName: "xmark"))
    
    var option: WLCardDexFilterOption! {
        didSet {
            label.text = option.filterDisplayString
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.textColor = .white
        addSubview(label)
        
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        addSubview(imageView)
        
        backgroundColor = .wondrousLabyrinth
        layer.cornerRadius = frame.height / 2 - 1
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        label.frame = CGRect(x: 8, y: 4, width: option.filterDisplayString.width(withSize: 14) + 1, height: 16)
        imageView.frame = CGRect(x: label.frame.maxX + 2, y: 5, width: 14, height: 14)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
