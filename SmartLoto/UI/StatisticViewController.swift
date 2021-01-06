//
//  StatisticViewController.swift
//  SmartLoto
//
//  Created by nguyen.dinh.thach on 12/29/20.
//

import UIKit

class StatisticViewController: UIViewController {
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.layer.cornerRadius = 15
        contentView.layer.masksToBounds = true
        
        let blurEffect = UIBlurEffect(style: .light)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.translatesAutoresizingMaskIntoConstraints = false
        contentView.insertSubview(blurView, at: 0)
        
        NSLayoutConstraint.activate([
          blurView.heightAnchor.constraint(equalTo: contentView.heightAnchor),
          blurView.widthAnchor.constraint(equalTo: contentView.widthAnchor),
          ])
        
        let vibrancyEffect = UIVibrancyEffect(blurEffect: blurEffect)
        let vibrancyView = UIVisualEffectView(effect: vibrancyEffect)
        vibrancyView.translatesAutoresizingMaskIntoConstraints = false
        blurView.contentView.addSubview(vibrancyView)
        
        NSLayoutConstraint.activate([
          vibrancyView.heightAnchor.constraint(equalTo: blurView.contentView.heightAnchor),
          vibrancyView.widthAnchor.constraint(equalTo: blurView.contentView.widthAnchor),
          vibrancyView.centerXAnchor.constraint(equalTo: blurView.contentView.centerXAnchor),
          vibrancyView.centerYAnchor.constraint(equalTo: blurView.contentView.centerYAnchor)
          ])
        
        dateLabel.text = Global.shared.getCurrentDateString()
        // Do any additional setup after loading the view.
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
