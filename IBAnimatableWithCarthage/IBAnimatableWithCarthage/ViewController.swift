//
//  ViewController.swift
//  IBAnimatableWithCarthage
//
//  Created by Daniel Asher on 14/03/2018.
//  Copyright © 2018 LEXI LABS. All rights reserved.
//

import UIKit
import IBAnimatable

class ViewController: UIViewController {

    @IBOutlet weak var animatableButton: AnimatableButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        animatableButton.addTarget(self, action: #selector(wobbleButton), for: .touchUpInside)

    }

    @objc func wobbleButton() {
        animatableButton.animate(.wobble(repeatCount: 1))
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        wobbleButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

