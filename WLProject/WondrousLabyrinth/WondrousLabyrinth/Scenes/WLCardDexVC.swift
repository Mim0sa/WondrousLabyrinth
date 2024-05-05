//
//  WLCardDexVC.swift
//  WondrousLabyrinth
//
//  Created by 吉彦臻 on 2024/4/8.
//

import UIKit

class WLCardDexVC: UIViewController {
    
    @IBOutlet weak var navigationView: WLNavigationView!
    @IBOutlet weak var searchBar: UIView!
    @IBOutlet weak var filterOptionContent: UIView!
    var filterOptionScrollView: WLCardDexFilterOptionScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareUI()
        
        print("属性-草".width(withSize: 20), "一击".width(withSize: 20))
        filterOptionScrollView.appendOption(WLCardDexFilterOption.attribute(WLTableItem(dictCode: "", dictSort: 0, dictValue: "草", id: 0, status: 0, typeCode: "")))
        filterOptionScrollView.appendOption(WLCardDexFilterOption.type(WLTableItem(dictCode: "", dictSort: 0, dictValue: "支援者", id: 0, status: 0, typeCode: "")))
        filterOptionScrollView.appendOption(WLCardDexFilterOption.regulation(WLTableItem(dictCode: "", dictSort: 0, dictValue: "太阳&月亮", id: 0, status: 0, typeCode: "")))
        filterOptionScrollView.appendOption(WLCardDexFilterOption.sepical(WLTableItem(dictCode: "", dictSort: 0, dictValue: "连击", id: 0, status: 0, typeCode: "")))
    }
    
    func prepareUI() {
        navigationView.needShowSeparatorLine = false
        
        searchBar.layer.borderColor = UIColor.wondrousLabyrinth.cgColor
        searchBar.layer.borderWidth = 0.6
        searchBar.layer.cornerRadius = 10
        
        filterOptionScrollView = WLCardDexFilterOptionScrollView()
        filterOptionContent.addSubview(filterOptionScrollView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        filterOptionScrollView.frame.size = CGSize(width: filterOptionContent.frame.width,
                                                   height: filterOptionContent.frame.height)
    }
    
    @IBAction func naviBackbuttonClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindHomeFromCardDex", sender: nil)
    }
    
}

enum WLCardDexFilterOption {
    case keyword(String)
    
    case regulation(WLTableItem)
    case series(WLTableItem)
    case sepical(WLTableItem)
    case rarity(WLTableItem)
    case type(WLTableItem)
    
    case attribute(WLTableItem)
    case evolve(WLTableItem)
    case pokemonType(WLTableItem)
    case abilityCost(WLTableItem)
    
    var filterDisplayString: String {
        switch self {
        case .keyword(let keyword):
            return keyword
        case .attribute(let item):
            return "属性-\(item.dictValue)"
        case .regulation(let item):
            return item.dictValue
        case .series(let item):
            return item.dictValue
        case .sepical(let item):
            return item.dictValue
        case .type(let item):
            return item.dictValue
        case .rarity(let item):
            return item.dictValue
        case .evolve(let item):
            return item.dictValue
        case .pokemonType(let item):
            return item.dictValue
        case .abilityCost(let item):
            return item.dictValue
        }
    }
}
