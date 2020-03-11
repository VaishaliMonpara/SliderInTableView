//
//  ViewController.swift
//  TableViewWithSlider
//
//  Created by MAC0008 on 09/03/20.
//  Copyright © 2020 MAC0008. All rights reserved.
//https://fluffy.es/solve-duplicated-cells/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblView: UITableView!
    
    var sliderArr = NSMutableArray()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //To reset Slider
        for _ in 0..<100{
            sliderArr.add("0")
        }
        
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.lblSliderTitle.text = "Slider \(indexPath.row)"
        cell.sliderVal.tag = indexPath.row
        cell.sliderVal.addTarget(self, action: #selector(sliderValueChanged(sender:)), for: .valueChanged)
        cell.sliderVal.value = (sliderArr[indexPath.row] as! NSString).floatValue
        cell.lblSliderValue.text = sliderArr[indexPath.row] as? String
        return cell
    }
    
    @objc func sliderValueChanged(sender: UISlider)
    {
        sliderArr.replaceObject(at: sender.tag, with: String(sender.value))
        let cell = tblView.cellForRow(at: IndexPath(row: sender.tag, section: 0)) as! TableViewCell
        cell.lblSliderValue.text = sliderArr[sender.tag] as? String
        cell.sliderVal.value = (sliderArr[sender.tag] as! NSString).floatValue
        
    }
    
}
