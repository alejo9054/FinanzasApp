//
//  BudgetViewController.swift
//  alejoFinanzas
//
//  Created by Alejo on 21/05/20.
//  Copyright © 2020 Alejo. All rights reserved.
//

import UIKit

class BudgetViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var animationsButtons: [UIButton]!
    @IBOutlet weak var animationLayout: NSLayoutConstraint!
    
    //al ser un array de buttons no se puede poner el atributo weak
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let cell = UINib(nibName: "TransactionsCell", bundle: Bundle.main)
        tableView.register(cell, forCellReuseIdentifier: "cell")
        // Do any additional setup after loading the view.
    }
    @IBAction func animateHeader(sender: UIButton){
        //codigo para a animacion de cambio del boton cuando se presione
        animationLayout.constant = sender.frame.origin.x
               UIView.animate(withDuration: 0.5, animations: {
                   self.view.layoutIfNeeded()
               }) { (completed) in
                //cambiar el texto a blanco cuando se haga clik
                   self.animationsButtons.forEach {
                       $0.setTitleColor( UIColor(named: "TextColor") , for: .normal)
                       sender.setTitleColor( UIColor.white , for: .normal)
                   }
               }
           }
        
    }
    

   extension BudgetViewController: UITableViewDelegate {
       
   }

   extension BudgetViewController: UITableViewDataSource {
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           //cargando la vista del empty status
           let count = 10
           
           return count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           return tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
       }
       
       
   }

