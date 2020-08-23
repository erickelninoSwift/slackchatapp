//
//  LoginVC.swift
//  Smack App
//
//  Created by El nino Cholo on 2020/08/22.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController
{
    
    @IBOutlet weak var closewindow: UIButton!
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var loginbuttonpressed: UIButton!
    
    @IBOutlet weak var donthaveaccountbutton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        closeWin()
        createAC()
    }
    
    func closeWin()
    {
        self.closewindow.addTarget(self, action: #selector(close), for: .touchUpInside)
    }
    
    @objc func close()
    {
        self.dismiss(animated: true, completion: nil)
    }
    
    func createAC()
    {
        self.donthaveaccountbutton.addTarget(self, action: #selector(createmyaccount), for: .touchUpInside)
    }
    
    @objc func createmyaccount()
    {
        self.performSegue(withIdentifier: CREATE_ACCOUNT, sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == CREATE_ACCOUNT
        {
            let secondVC = segue.destination as! CreateAccount
        }
    }
    
}
