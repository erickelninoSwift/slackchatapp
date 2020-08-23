//
//  ChannelVC.swift
//  Smack App
//
//  Created by El nino Cholo on 2020/08/21.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    @IBOutlet weak var loginbutton: UIButton!
    
    @IBAction func unwindVC(segue: UIStoryboardSegue)
    {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let swrevealview = revealViewController()
        {
            
            swrevealview.rearViewRevealWidth = view.frame.size.width - 75
        }
        loginmethod()
    }
    
    func loginmethod()
    {
        self.loginbutton.addTarget(self, action: #selector(login), for: .touchUpInside)
    }
    
    @objc func login()
    {
        self.performSegue(withIdentifier: LOG_IN, sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == LOG_IN
        {
            let secondVC = segue.destination as! LoginViewController
        }
    }
    
    
    
}
