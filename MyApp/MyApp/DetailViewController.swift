//
//  DetailViewController.swift
//  MyApp
//
//  Created by Deepthi Mamillapalli on 18/05/2018.
//  Copyright © 2018 Vinay. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var txt: UITextView!
    
    var image = UIImage()
    var name = ""
    var text = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbl.text = name
        img.image = image
        txt.text = text
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
