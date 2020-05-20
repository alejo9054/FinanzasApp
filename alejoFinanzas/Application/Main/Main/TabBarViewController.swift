//
//  TabBarViewController.swift
//  alejoFinanzas
//
//  Created by Alejo on 18/05/20.
//  Copyright © 2020 Alejo. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
 let menuButton = UIButton(frame: CGRect.zero)
    override func viewDidLoad() {
        
        super.viewDidLoad()
       
        customButtom()
        
	
        // Do any additional setup after loading the view.
    }
    func customButtom() {
           //crear boton
           let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 32, height: 32))
        	
        //modificar el frame del boton para que este donde nosotros queremos
       
           var menuButtonFrame = menuButton.frame
       view.insetsLayoutMarginsFromSafeArea = false
        
        if UIDevice().userInterfaceIdiom == .phone {
        switch UIScreen.main.nativeBounds.height {
            case 1136:
                print("iPhone 5 or 5S or 5C")

            case 1334:
                print("iPhone 6/6S/7/8")
            menuButtonFrame.origin.y =  tabBar.frame.origin.y + 5

            case 1920, 2208:
                print("iPhone 6+/6S+/7+/8+")
            menuButtonFrame.origin.y =  tabBar.frame.origin.y + 5

           

            default:
                menuButtonFrame.origin.y =  tabBar.frame.origin.y - 30
            }
        }
             	//configurando en y
           menuButtonFrame.origin.x = view.bounds.width / 2 - menuButtonFrame.size.width / 2 //configurando en x
           menuButton.frame = menuButtonFrame
           //seteando imagen ya cargada en los assets
           menuButton.setImage(UIImage(named: "PlusButton"), for: .normal)
        
          // menuButton.setTitle("qwe", for: .normal)
           //cambiando color
           menuButton.backgroundColor = UIColor(named: "GreenColor")
           menuButton.layer.cornerRadius = 8 //redondeo
           view.addSubview(menuButton)
            
           //agregando evento que cuando se presione cambie el tag
           menuButton.addTarget(self, action: #selector(menuButtonAction(sender:)), for: .touchUpInside)
       }
       //agregando evento que cuando se presione cambie el tag
       @objc private func menuButtonAction(sender: UIButton) {
           selectedIndex = 2
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
