//
//  CustomTableViewController.swift
//  Template
//
//  Created by Mateo Garcia on 4/4/17.
//  Copyright © 2017 StreetCode. All rights reserved.
//

import UIKit
//import Firebase

class CustomTableViewController: UITableViewController {

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("red")
        
    performSegue(withIdentifier: "SportsSegue", sender: self)
    }
    
    
    
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
//
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 4;
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.row==0){
            let cell = tableView.dequeueReusableCell(withIdentifier: "FootballCell", for: indexPath) as! CustomTableViewCell
            return cell
        } else if (indexPath.row==1) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "BasketballCell", for: indexPath) as! CustomTableViewCell
            return cell
        } else if (indexPath.row==2) {
//            print ("in this statement");
            let cell = tableView.dequeueReusableCell(withIdentifier: "SoccerCell", for: indexPath) as! CustomTableViewCell
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "BaseballCell", for: indexPath) as! CustomTableViewCell
            return cell
        }
        // Configure the cell...
        
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

//    @IBAction func onSignOutButton(_ sender: UIBarButtonItem) {
//        
//        do {
//            
//            try FIRAuth.auth()?.signOut()
//        }
//        catch let error {
//            
//            print("Unable to sign out: \(error)")
//        }
//    }
}
