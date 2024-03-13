//
//  LastViewController.swift
//  Trivia
//
//  Created by Julian Martinez on 3/12/24.
//

import UIKit

class LastViewController: UIViewController {
    
    var correctAnswerIndex: Int = 2
    
    @IBOutlet weak var questionNumberLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var option4: UIButton!
    @IBOutlet weak var option3: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func optionButtonTapped(_ sender: UIButton) {
        // Disable all buttons to prevent further interaction
        option1.isEnabled = false
        option2.isEnabled = false
        option3.isEnabled = false
        option4.isEnabled = false
        
        // Check if the tapped button's tag matches the index of the correct answer
        if sender.tag == correctAnswerIndex {
            // Highlight the correct answer (change background color, text color, etc.)
            sender.backgroundColor = UIColor.green
        } else {
            // Highlight the selected option as incorrect (change background color, text color, etc.)
            sender.backgroundColor = UIColor.red
            
            // Highlight the correct answer (option2 in this case) in green
            switch correctAnswerIndex {
            case 1:
                option1.backgroundColor = UIColor.green
            case 2:
                option2.backgroundColor = UIColor.green
            case 3:
                option3.backgroundColor = UIColor.green
            case 4:
                option4.backgroundColor = UIColor.green
            default:
                break
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
