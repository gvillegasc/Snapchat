//
//  ViewController.swift
//  Snapchat
//
//  Created by MAC05 on 9/05/19.
//  Copyright © 2019 GerardoVillegas. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class iniciarSesionViewController: UIViewController {


    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func IniciarSesionTapped(_ sender: Any) {
    Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!){
         (user, error) in print("Intentado Iniciar Sesion")
         if error != nil {
            print("Se presento el siguiente error: \(error)")
         }
         else{
            print("Inicio de Sesion Exitoso")
         }
         }
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

