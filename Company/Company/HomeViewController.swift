//
//  HomeViewController.swift
//  Company
//
//  Created by Patricia Paavilainen on 05/02/18.
//  Copyright © 2018 Patricia Paavilainen. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBAction func refreshDB(_ sender: Any) {
        Api.resetDb { (response)
            in
            print(response)
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
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

