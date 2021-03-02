//
//  ViewController.swift
//  PracticaUno
//
//  Created by Juan Alberto Camacho Bolaños on 19/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFrase: UITextField!
    @IBOutlet weak var tvHistoria: UITextView!
    @IBOutlet weak var btnArgegar: UIButton!
    @IBOutlet weak var swImagen: UISwitch!
    @IBOutlet weak var ivIcono: UIImageView!
    @IBOutlet weak var slAlfa: UISlider!

    @IBAction func scCHange(_ sender: UISegmentedControl) {
        btnArgegar.isEnabled = (sender.selectedSegmentIndex == 0)
        swImagen.isEnabled = (sender.selectedSegmentIndex == 0)
        slAlfa.isEnabled = (sender.selectedSegmentIndex == 0)
    }
    
    @IBAction func btnTouch(_ sender: UIButton) {
        let laFrase = txtFrase.text
        tvHistoria.text = (tvHistoria.text ?? "") + "\n" +
                (laFrase ?? "")
        txtFrase.text = ""
    }
    
    
    @IBAction func swChange(_ sender: UISwitch) {
        if swImagen.isOn {
            ivIcono.image = UIImage(systemName: "pencil.circle.fill")
        } else {
            ivIcono.image = UIImage(systemName: "pencil")
        }
    }
    
    
    @IBAction func slChange(_ sender: UISlider) {
        ivIcono.alpha = CGFloat(slAlfa.value)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
