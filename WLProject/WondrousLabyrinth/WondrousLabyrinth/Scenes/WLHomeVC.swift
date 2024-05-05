//
//  ViewController.swift
//  WondrousLabyrinth
//
//  Created by 吉彦臻 on 2024/4/1.
//

import UIKit
import Kingfisher

class WLHomeVC: UIViewController {

    @IBOutlet weak var testImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        DispatchQueue.global().async {
            let brain = WLJsonManager.shared.readLocalJson()
            var url = brain!.collections.randomElement()!.cards.randomElement()!.image
            url = url.map { c in
                if c == Character("\\") {
                    return "/"
                }
                return String(c)
            }.joined()
            let urlStr = "https://raw.githubusercontent.com/duanxr/PTCG-CHS-Datasets/main/\(url)"
            DispatchQueue.main.async {
                self.testImage.kf.setImage(with: URL(string: urlStr))
            }
        }
    }

    @IBAction func cardDexButtonClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "toCardDexVCFromHome", sender: nil)
    }
    
    @IBAction func unwindHome(segue: UIStoryboardSegue) {
        
    }
    
}

extension UINavigationController: UIGestureRecognizerDelegate {

    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}

