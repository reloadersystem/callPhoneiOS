//
//  ViewController.swift
//  CallPhone
//
//  Created by Resembrink Correa Egoavil on 9/18/19.
//  Copyright © 2019 Resembrink Correa Egoavil. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController {

    @IBOutlet weak var phoneNumber: UITextField!
    
    @IBOutlet weak var msgText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goCallPhone(_ sender: Any) {
        //51 918457021
//        let url:NSURL = NSURL(string: "tel://\(String(describing: self.phoneNumber.text))")!
//        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        
        var url:NSURL? = NSURL(string: "tel://\(String(self.phoneNumber.text!))")
        UIApplication.shared.openURL(url! as URL)
    }
    
    @IBAction func goSubmitSMS(_ sender: Any) {
        
        if MFMessageComposeViewController.canSendText() {
            
            let controller = MFMessageComposeViewController()
            controller.body = self.msgText.text
            controller.recipients = [self.phoneNumber.text!]
            controller.messageComposeDelegate = self
            
            self.present(controller, animated: true, completion: nil)
        }
        else
        {
            print("no se pueden enviar el msgtexto")
        }
        
        
    }
}

extension ViewController: MFMessageComposeViewControllerDelegate {
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        
    }
}

