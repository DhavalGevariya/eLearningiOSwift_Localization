//
//  ViewController.swift
//  eLearning_Localization
//
//  Created by Dhaval Gevariya on 24/08/20.
//  Copyright © 2020 Dhaval Gevariya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblLanguage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        //User Like this
        lblLanguage.text = "Hello".localized()
        // Do any additional setup after loading the view.
    }
}

//MARK:- Extension for Localize your String
extension String {
    func localized() -> String
    {
        //forResource here you have to add your language code
        let path = Bundle.main.path(forResource: "hi", ofType: "lproj")
        let bundle = Bundle(path: path!)
        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
    }
}
