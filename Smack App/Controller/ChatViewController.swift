//
//  ChatViewController.swift
//  Smack App
//
//  Created by El nino Cholo on 2020/08/21.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController{
    
    //MARK: menu button to view channels
    
    @IBOutlet weak var menutoggle: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        toggle()
        self.view.addGestureRecognizer(self.revealViewController()!.panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController()!.tapGestureRecognizer())
       
    }
   
    func toggle()
    {
   
        self.menutoggle.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        
    }
    
    
}
