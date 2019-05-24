////
//ViewController.swift
//testDownloadImage
//
//Created by Basel Baragabah on 24/05/2019.
//Copyright © 2019 Basel Baragabah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var newImage : UIImage?
    
    @IBOutlet weak var iconImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        load(url: URL(string: "https://developer.apple.com/swift/images/swift-og.png")!, complateHandler: { (image) in
            
            self.iconImage.image = image!
        })
        
     

    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toVc2", sender: nil)
        
    }
    
    func load(url: URL, complateHandler:@escaping (_ image:UIImage?) -> Void)  {
        DispatchQueue.global().async {
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        complateHandler(image)
                    }
                }
            }
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "toVc2") {
           if let vc = segue.destination as? ViewController2 {
            
                  vc.newImage = self.iconImage.image

                
            }

    }
    
}

}
