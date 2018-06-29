//
//  Tab2ViewController.swift
//  TabBarExample
//
//  Created by Jorge Castro on 06/29/18.
//  Copyright © 2018 Jorge Castro. All rights reserved.
//

import UIKit

class Tab2ViewController: UIViewController {

    @IBOutlet weak var btnNavigate: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func actionNavigate(_ sender: Any) {
        self.navigationController?.pushViewController(InternalView2Controller(), animated: true)
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
