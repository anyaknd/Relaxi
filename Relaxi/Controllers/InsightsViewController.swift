//
//  InsightsViewController.swift
//  Relaxi
//
//  Created by Anya on 06/08/2018.
//  Copyright © 2018 Anya Kundakchian. All rights reserved.
//

import UIKit
import Charts
import RealmSwift

class InsightsViewController: UIViewController {
    
    let realm = try! Realm()
    
    var ratings : Results<Rating>?

    var lowerBodyStretchDataEntry = PieChartDataEntry(value: 0)
    var upperBodyStretchDataEntry = PieChartDataEntry(value: 0)
    var yogaOneDataEntry = PieChartDataEntry(value: 0)
    var yogaTwoDataEntry = PieChartDataEntry(value: 0)
    var danceDataEntry = PieChartDataEntry(value: 0)
    var bellyBreathingDataEntry = PieChartDataEntry(value: 0)
    var countBackwardDataEntry = PieChartDataEntry(value: 0)
    var simpleMeditationDataEntry = PieChartDataEntry(value: 0)
    var mantraDataEntry = PieChartDataEntry(value: 0)
    var emptyMindDataEntry = PieChartDataEntry(value: 0)
    var walkingMeditationDataEntry = PieChartDataEntry(value: 0)
    
//    var lowerBodyStretch : Int = 0
//    var upperBodyStretch : Int = 0
//    var yogaOne : Int = 0
//    var yogaTwo : Int = 0
//    var dance : Int = 0
//    var bellyBreathing : Int = 0
//    var countBackward : Int = 0
//    var simpleMeditation : Int = 0
//    var mantra : Int = 0
//    var emptyMind : Int = 0
//    var walkingMeditation : Int = 0
    
    var dataEntries = [PieChartDataEntry]()
    
    @IBOutlet weak var pieChart: PieChartView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ratings = realm.objects(Rating.self)
        
        //print("Total number of objects is \(ratings?.count)")
        
        guard let total = ratings?.count else {fatalError()}
            
            let lowerBodyCount = ratings?.filter("ratingName contains 'Lower Body Stretch'").count
            //print(lowerBodyratings?.count)
            
            let upperBodyCount = ratings?.filter("ratingName contains 'Upper Body Stretch'").count
            let yogaOneCount = ratings?.filter("ratingName contains 'Yoga 1'").count
            let yogaTwoCount = ratings?.filter("ratingName contains 'Yoga 2'").count
            let danceCount = ratings?.filter("ratingName contains 'Dance'")
            let bellyBreathingCount = ratings?.filter("ratingName contains 'Belly Breathing'")
            let countBackwardCount = ratings?.filter("ratingName contains 'Count Backward'")
            let simpleMeditationCount = ratings?.filter("ratingName contains 'Simple Meditation'")
            let mantraCount = ratings?.filter("ratingName contains 'Mantra Meditation'")
            let emptyMindCount = ratings?.filter("ratingName contains 'Empty Mind Meditation'")
            let walkingMeditationCount = ratings?.filter("ratingName contains 'Walking Meditation'")
        
        print(ratings?[1])
        
        pieChart.chartDescription?.text = "Most relaxing"

        //values for data entries
        lowerBodyStretchDataEntry.value = Double(lowerBodyCount!)
        lowerBodyStretchDataEntry.label = "Lower"

        upperBodyStretchDataEntry.value = Double(upperBodyCount!)
        upperBodyStretchDataEntry.label = "Upper"

        yogaOneDataEntry.value = Double(yogaOneCount!)
        yogaOneDataEntry.label = "Yoga 1"

        yogaTwoDataEntry.value = Double(yogaTwoCount!)
        yogaTwoDataEntry.label = "Yoga 2"


        //data entries
        dataEntries = [lowerBodyStretchDataEntry, upperBodyStretchDataEntry, yogaOneDataEntry, yogaTwoDataEntry, danceDataEntry, bellyBreathingDataEntry, countBackwardDataEntry, simpleMeditationDataEntry, mantraDataEntry, emptyMindDataEntry, walkingMeditationDataEntry]

        updateChartData()
    }
    
    func updateChartData(){

        let chartDataSet = PieChartDataSet(values: dataEntries, label: nil)
        let chartData = PieChartData(dataSet: chartDataSet)

        let colours = [UIColor(hexString: "7480FF"), UIColor(hexString: "FF764B")]
        chartDataSet.colors = colours as! [NSUIColor]

        pieChart.data = chartData

    }
}
