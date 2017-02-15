//
//  TableViewController.swift
//  TableViewApp
//
//  Created by Henry Aguinaga on 2016-07-11.
//  Copyright © 2016 Henry Aguinaga. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let ImageList = ["Burj-Khalifa.jpg", "Abraj-Al-Bait.JPG","Shanghai-Tower.jpg", "World-Trade-Center.jpg", "Willis-Tower5.jpg", "Taipei-101-6.jpg", "Shanghai-World-Financial-Center-7.jpg", "International-Commerce-Centre-8.jpg","John-Hancock-Center-9.jpg", "Petronas-Twin-Towers-10.jpg"]
    
    let TitleList = ["Burj Khalifa", "Abraj Al Bait","Shanghai Tower", "World Trade Center","Willis Tower", "Taipei 101", "Shanghai World Financial Center", "International Commerce Centre", "John Hancock Center", "Petronas Twin Towers"]
    
    let DescriptionList = ["Dubai UAA", "Shanghai Kina","Mekka Saudiarabien", "New York USA", "Chicago USA", "Taipei Taiwan", "Shanghai Kina", "Hongkong Hongkong", "Chicago USA", "Kuala Lumpur Malaysia"]


    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return TitleList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell
        
        cell.CellTitle.text = TitleList[indexPath.row]
        cell.CellDescription.text = DescriptionList[indexPath.row]
        
        let imagename = UIImage(named: ImageList[indexPath.row])
        
        cell.CelImage.image = imagename
        
    
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "DetailView"){
            
            let VC = segue.destination as! DetailViewController
            
            if let indexpath = self.tableView.indexPathForSelectedRow {
                
                let Title = TitleList[indexpath.row] as String
                VC.SentData1 = Title
                
                let Description = DescriptionList[indexpath.row] as String
                VC.SentData2 = Description
                
                let ImageView = ImageList[indexpath.row] as String
                VC.SentData3 = ImageView
                
                
                
            }
            
        }
    }
    

}





























































