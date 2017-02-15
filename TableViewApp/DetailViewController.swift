//
//  DetailViewController.swift
//  TableViewApp
//
//  Created by Henry Aguinaga on 2016-07-11.
//  Copyright © 2016 Henry Aguinaga. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var DetailImageview: UIImageView!
    @IBOutlet weak var DetailTitle: UILabel!
    @IBOutlet weak var DetailDescription: UILabel!
    
    var SentData1:String!
    var SentData2:String!
    var SentData3:String!
    
    
    @IBOutlet weak var YearBuild: UILabel!
    @IBOutlet weak var Height: UILabel!
    @IBOutlet weak var Cost: UILabel!
    @IBOutlet weak var Record: UILabel!

    
    // "Abraj Al Bait","Shanghai Tower", "World Trade Center"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DetailTitle.text = SentData1
        DetailDescription.text = SentData2
        DetailImageview.image = UIImage(named: SentData3)
        
        if DetailTitle.text == "Burj Khalifa" {
            YearBuild.text = "Year build: 2010"
            Height.text = "Height: 828 m"
            Cost.text = "Cost: $ 1.5 Billion"
            Record.text = "Record: Since 2010"
        }
        
        if DetailTitle.text == "Abraj Al Bait" {
            YearBuild.text = "Year build: 2014"
            Height.text = "Height: 632 m"
            Cost.text = "Cost: $ 1.5 Billion"
            Record.text = "Record: Since 2010"
        }
        
        if DetailTitle.text == "Shanghai Tower" {
            YearBuild.text = "Year build: 2012"
            Height.text = "Height: 601 m"
            Cost.text = "Cost: $ 1.5 Billion"
            Record.text = "Record: Since 2010"
        }
        
        if DetailTitle.text == "World Trade Center" {
            YearBuild.text = "Year build: 2014"
            Height.text = "Height: 541 m"
            Cost.text = "Cost: $ 1.5 Billion"
            Record.text = "Record: Since 2010"
        }
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
