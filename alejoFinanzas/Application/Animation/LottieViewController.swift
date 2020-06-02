//
//  LottieViewController.swift
//  alejoFinanzas
//
//  Created by Alejo on 2/06/20.
//  Copyright © 2020 Alejo. All rights reserved.
//

import UIKit
import Lottie

class LottieViewController: UIViewController {
    
    
    @IBOutlet var animationView: AnimationView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //animationView.animation = Animation.named("23661-nasa-logo")
        animationView = .init(name: "23721-paper-plane")
        animationView!.frame = view.bounds
        
        animationView!.contentMode = .scaleAspectFit
        animationView!.loopMode = .loop
        animationView!.animationSpeed = 0.5
         
         view.addSubview(animationView)
                         
         animationView.play()


        /*animationView.play { (finished) in
            /// Animation finished
        }*/

        // Do any additional setup after loading the view.
    }
    
    func playAnimation() {
        DispatchQueue.main.async {
            self.animationView.currentProgress = 0
            self.animationView.play()
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
