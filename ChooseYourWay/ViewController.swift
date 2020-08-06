//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain: StoryBrain = StoryBrain();
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI();
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        storyBrain.checkChoice(sender.currentTitle!);
        updateUI();
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryText();
        choice1Button.setTitle(storyBrain.getChoice(1), for: .normal);
        choice2Button.setTitle(storyBrain.getChoice(2), for: .normal);
    }


}

