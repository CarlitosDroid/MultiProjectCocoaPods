//
//  ViewController.swift
//  MultiProjectCocoaPods
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 18/01/24.
//

import UIKit
import ModuleDomain
import ModuleCore

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickOnDomainButton(_ sender: Any) {
        let domainModule = ModuleDomain()
        domainModule.tryModuleDomain()
    }
    
    @IBAction func clickOnCoreButton(_ sender: Any) {
        print(Asset.Colors.mostaza.name)
    }
    
    @IBAction func clickOnFeature(_ sender: Any) {
        performSegue(withIdentifier: "UserSegue", sender: nil)
    }
}

