//
//  ViewController2.swift
//  Bhagavad Gita
//
//  Created by IMAC3 on 22/11/23.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var imageOutlet2: UIImageView!
    @IBOutlet weak var nameOutlet: UILabel!
    @IBOutlet weak var nameOutlet2: UILabel!
    @IBOutlet weak var slugOutlet: UILabel!
    @IBOutlet weak var versesOutlet: UILabel!
    @IBOutlet weak var chapterNumber: UILabel!
    @IBOutlet weak var meanOutlet: UILabel!
    @IBOutlet weak var chapterSummary: UILabel!
    @IBOutlet weak var chapterSummary2: UILabel!
    
    var img = ""
    var name = ""
    var name2 = ""
    var slug = ""
    var count = Int()
    var chapternum = Int()
    var mean = ""
    var summary = ""
    var summary2 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        imageOutlet2.image = UIImage(named: img)
        nameOutlet.text = name
        nameOutlet2.text = name2
        slugOutlet.text = slug
        versesOutlet.text = String(count)
        chapterNumber.text = String(chapternum)
        meanOutlet.text = mean
        chapterSummary.text = summary
        chapterSummary2.text = summary2
        
    }
}
