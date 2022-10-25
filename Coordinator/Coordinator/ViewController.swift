//
//  ViewController.swift
//  Coordinator
//
//  Created by Eliane Regina Nicácio Mendes on 25/10/22.
//

import UIKit

class ViewController: UIViewController {

    var customView: CustomView?
    
    override func loadView() {
        customView = CustomView(delegate: self)
        view = customView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: CustomViewDelegate {
    
}

