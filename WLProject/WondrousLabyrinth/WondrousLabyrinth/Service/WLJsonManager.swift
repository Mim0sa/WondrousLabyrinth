//
//  WLJsonManager.swift
//  WondrousLabyrinth
//
//  Created by 吉彦臻 on 2024/4/4.
//

import Foundation

class WLJsonManager {
    
    static let shared = WLJsonManager()
    
    private init() {}
    
    func readLocalJson(_ resourceName: String = "ptcg_chs_infos") -> WLCardBrain? {
        do {
            if let bundlePath = Bundle.main.path(forResource: resourceName, ofType: "json"),
               let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                let jsonObject = try JSONDecoder().decode(WLCardBrain.self, from: jsonData)
                return jsonObject
            } else {
                return nil
            }
        } catch {
            return nil
        }
    }
    
}
