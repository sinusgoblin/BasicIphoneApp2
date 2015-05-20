//
//  postChoices.swift
//  barakah
//
//  Created by $MzN$ on 5/19/15.
//  Copyright (c) 2015 snapsell. All rights reserved.
//

import UIKit

class postChoices: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    var myImage: UIImage!
    
//    @IBOutlet weak var imageTesting: UIImageView!
    
    @IBAction func gallery(sender: AnyObject) {
        
        var image = UIImagePickerController()
        image.delegate = self
        image.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        image.allowsEditing = false
        
       
        self.presentViewController(image, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
//        imageTesting.image = UIImage(named: "315px-Blank_woman_placeholder.svg.png")
            // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
        println("Image selected")
        self.dismissViewControllerAnimated(true, completion: nil)
        performSegueWithIdentifier("gallerySegue", sender: self)

    
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        switch segue.identifier!{
        case "gallerySegue":
            let destination = segue.destinationViewController as! postView
            destination.myImage = UIImage()
        case "pictureSegue": // Do stuff to prepare for second target VC
            println("Something to show here")
        default: println("Segue not defined")
        }
    }
    

    

}
