//
//  ViewController.swift
//  Crypto Advisor
//
//  Created by Khokhar, Umar on 1/4/18.
//  Copyright © 2018 Umar Khokhar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var coinIndex : Int = 0
    
    @IBOutlet weak var buyIndex: UIImageView!
    @IBOutlet weak var buyLabel: UILabel!
    
    let cryptoCoinArray = ["Bitcoin", "Cardano", "Dash", "Ethereum", "IOTA", "Litecoin", "Monero", "NEM", "NEO", "Ripple", "Stellar"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateCoin()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }

    @IBAction func adviseButtonPressed(_ sender: UIButton) {
        updateCoin()
    }
    
    func updateCoin() {
        coinIndex = Int(arc4random_uniform(UInt32(cryptoCoinArray.count)))
        
        buyIndex.image = UIImage(named: cryptoCoinArray[coinIndex])
        buyLabel.text = cryptoCoinArray[coinIndex]
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateCoin()
    }
    
}

