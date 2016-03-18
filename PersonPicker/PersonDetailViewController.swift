//
//  PersonDetailViewController.swift
//  PersonPicker
//
//  Created by Jens Bruggemans on 18/03/16.
//  Copyright © 2016 jens. All rights reserved.
//

import UIKit

class PersonDetailViewController: UIViewController {

    var person: Person!
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = person.favoriteColor
        
        self.textView.text = person.info
        
        self.title = person.name
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
