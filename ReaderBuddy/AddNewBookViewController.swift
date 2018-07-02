//
//  AddNewBookViewController.swift
//  ReaderBuddy
//
//  Created by Dean Ivanov on 24/06/2018.
//  Copyright © 2018 Dean Ivanov. All rights reserved.
//

import UIKit
import CoreData

class AddNewBookViewController: UIViewController {

    var managedContext : NSManagedObjectContext!
    
    @IBOutlet weak var textName: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textName.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func save(_ sender: Any) {
        let name = textName.text
        let book = Book(context: managedContext)
        book.name = name
        book.date = Date()
        do {
            try managedContext.save()
            dismiss(animated: true)
            textName.resignFirstResponder()
        } catch {
            print("New data was not saved successfully.. Error: \(error)")
        }
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
