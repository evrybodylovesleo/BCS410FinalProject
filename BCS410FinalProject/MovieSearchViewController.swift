//
//  MovieSearchViewController.swift
//  BCS410FinalProject
//
//  Created by Brian Monaghan on 11/20/16.
//  Copyright © 2016 Brian Monaghan. All rights reserved.
//

import UIKit

class MovieSearchViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    var myMovie =  Movie()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)

        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        myMovie.setTitle(searchTextField.text!)
        
        if segue.identifier == "movieSearch" {
            //let indexPath = self.tableView.indexPathForSelectedRow
            let resultsVC = segue.destinationViewController as? MovieResultsViewController
            resultsVC?.myMovie = myMovie
        }
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

}
