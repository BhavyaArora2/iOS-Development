//
//  ViewController.swift
//  test
//
//  Created by ADG RIT 1 on 30/03/19.
//  Copyright © 2019 ADG RIT 1. All rights reserved.
//

import UIKit
import AVFoundation
class ViewControllerA: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("inside view did load")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("inside view did appear")
    }

    @IBAction func b1(_ sender: Any) {
        let text=field.text!
        speak(text: text)
        
    }
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var field: UITextField!
    
    @IBOutlet weak var newbutton: UIButton!
    
    func speak(text:String){
        let utterance=AVSpeechUtterance(string: text)
        utterance.rate=0.3
        utterance.voice=AVSpeechSynthesisVoice(language: "en-GB")
        let synt=AVSpeechSynthesizer()
        synt.speak(utterance)
    }
    z
}

