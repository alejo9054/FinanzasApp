//
//  OnBoardingStepsViewController.swift
//  alejoFinanzas
//
//  Created by Alejo on 2/04/20.
//  Copyright © 2020 Alejo. All rights reserved.
//

import UIKit

class OnBoardingStepsViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var onBoaringImage: UIImageView!
    
    var item: OnBoardingItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = item?.title
        descriptionLabel.text = item?.description
        onBoaringImage.image = UIImage(named: item?.imageName ?? "")        // Do any additional setup after loading the view.
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