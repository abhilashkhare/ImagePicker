//
//  ViewController.swift
//  ImagePickerReDO
//
//  Created by Abhilash Khare on 9/27/17.
//  Copyright © 2017 Abhilash Khare. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var imageDisplay: UIImageView!
    
    @IBAction func pickImage(_ sender: Any) {
        let imagepicker = UIImagePickerController()
        imagepicker.delegate =  self
        present(imagepicker, animated: true, completion: nil)
        
        func imagePickerController(_<#T##picker: UIImagePickerController##UIImagePickerController#>, didFinishPickingMediaWithInfo info: <#T##[String : Any]#>)
        {
            let chosenImage = info[UIImagePickerControllerOriginalImage] as? UIImage
            imageDisplay.image = chosenImage
        }
        
    }
}

