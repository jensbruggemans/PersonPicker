//
//  PersonsTableViewController.swift
//  PersonPicker
//
//  Created by Jens Bruggemans on 18/03/16.
//  Copyright © 2016 jens. All rights reserved.
//

import UIKit

class PersonsTableViewController: UITableViewController {

    var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        persons.append(Person(name: "Jens Bruggemans", info: "iOS developer", favoriteColor: UIColor.purpleColor()))
        persons.append(Person(name: "Jack Black", info: "Actor", favoriteColor: UIColor.blackColor()))
        persons.append(Person(name: "Minute Maid", info: "Drankje", favoriteColor: UIColor.orangeColor()))
        persons.append(Person(name: "Nadia", info: "Drankje", favoriteColor: UIColor.orangeColor()))
        persons.append(Person(name: "Arthur", info: "uit gent", favoriteColor: UIColor.blueColor()))
        persons.append(Person(name: "Pdiddy", info: "from Belgium",favoriteColor: UIColor.greenColor()))
        persons.append(Person(name: "Paul", info: "Author", favoriteColor: UIColor.blueColor()))

        persons.append(Person(name: "Kristof", info: "uit Bar Mundo", favoriteColor: UIColor.orangeColor()))
        persons.append(Person(name: "Gerrit", info: "Heers", favoriteColor: UIColor.redColor()))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return persons.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PersonCell", forIndexPath: indexPath)

        // Configure the cell...
        cell.textLabel?.text = persons[indexPath.row].name

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

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let personDetailVC = segue.destinationViewController as! PersonDetailViewController
        
        personDetailVC.person = self.persons[self.tableView.indexPathForSelectedRow!.row]
    }

}
