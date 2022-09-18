//
//  ViewController.swift
//  HelloWorld2
//
//  Created by Сампилов Ильдар on 17.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var grettingButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden.toggle()
        grettingButton.layer.cornerRadius = 10
        grettingButton.configuration = setupButton(with: "Show")
    }

    @IBAction func greetingButtonDidapped() {
        greetingLabel.isHidden.toggle()
        if greetingLabel.isHidden {
            grettingButton.setTitle("Show greeting", for: .normal)
        } else {
            grettingButton.setTitle("Hide Greeting", for: .normal)
        }
    }

    private func setupButton (with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        return buttonConfiguration
    }
}

