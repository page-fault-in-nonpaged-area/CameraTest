//
//  ViewController.swift
//  CameraTest
//
//  Created by wilyang on 2021-09-15.
//

import UIKit
import Flutter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func openFlutterCamera(_ sender: Any) {
        print("Opening...")
        let flutterViewController = FlutterViewController(project: nil, nibName: nil, bundle: nil)
        present(flutterViewController, animated: true, completion: nil)
    }
}

