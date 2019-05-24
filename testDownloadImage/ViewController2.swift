////
//ViewController2.swift
//testDownloadImage
//
//Created by Basel Baragabah on 24/05/2019.
//Copyright © 2019 Basel Baragabah. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var downloadedImageView: UIImageView!
    
    var newImage : UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        downloadedImageView.image = newImage

    }

  

}

