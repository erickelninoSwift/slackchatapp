//
//  CreateAccount.swift
//  Smack App
//
//  Created by El nino Cholo on 2020/08/22.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit

class CreateAccount: UIViewController
{
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var emailaddress: UITextField!
    
    @IBOutlet weak var avatarimagesview: UIImageView!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var closereturn: UIButton!
    
    @IBOutlet weak var createAccountbutton: UIButton!
    
    @IBOutlet weak var chooseavatar: UIButton!
    @IBOutlet weak var generatebackground: UIButton!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        closebutton()
    }
    
    func closebutton()
    {
        self.closereturn.addTarget(self, action: #selector(returnVC), for: .touchUpInside)
    }
    
    @objc func returnVC()
    {
        performSegue(withIdentifier: UNWINDSEGUE, sender: nil)
        
    }
}
