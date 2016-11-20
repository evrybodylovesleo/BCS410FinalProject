//
//  MovieResultsViewController.swift
//  BCS410FinalProject
//
//  Created by Brian Monaghan on 11/20/16.
//  Copyright © 2016 Brian Monaghan. All rights reserved.
//

import UIKit

class MovieResultsViewController: UIViewController {
    
    var myMovie: Movie?
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let movieTitle =  myMovie?.getTitle(){
            titleLabel.text = "The movie searched was \(movieTitle)"
        }
        // Do any additional setup after loading the view.
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
