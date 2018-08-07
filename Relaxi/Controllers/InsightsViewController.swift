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
//    var danceDataEntry = PieChartDataEntry(value: 0)
//    var bellyBreathingDataEntry = PieChartDataEntry(value: 0)
//    var countBackwardDataEntry = PieChartDataEntry(value: 0)
//    var simpleMeditationDataEntry = PieChartDataEntry(value: 0)
//    var mantraDataEntry = PieChartDataEntry(value: 0)
//    var emptyMindDataEntry = PieChartDataEntry(value: 0)
//    var walkingMeditationDataEntry = PieChartDataEntry(value: 0)
    
    var dataEntries = [PieChartDataEntry]()
    
    @IBOutlet weak var pieChart: PieChartView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ratings = realm.objects(Rating.self)
        
        //print("Total number of objects is \(ratings?.count)")
        
        //guard let total = ratings?.count else {fatalError()}
        
        
        // Realm objects filtered by name
        let lowerBodyCount = ratings?.filter("ratingName contains 'Lower Body Stretch'")
        let upperBodyCount = ratings?.filter("ratingName contains 'Upper Body Stretch'")
        let yogaOneCount = ratings?.filter("ratingName contains 'Yoga 1'")
        let yogaTwoCount = ratings?.filter("ratingName contains 'Yoga 2'")
//        let danceCount = ratings?.filter("ratingName contains 'Dance'")
//        let bellyBreathingCount = ratings?.filter("ratingName contains 'Belly Breathing'")
//        let countBackwardCount = ratings?.filter("ratingName contains 'Count Backward'")
//        let simpleMeditationCount = ratings?.filter("ratingName contains 'Simple Meditation'")
//        let mantraCount = ratings?.filter("ratingName contains 'Mantra Meditation'")
//        let emptyMindCount = ratings?.filter("ratingName contains 'Empty Mind Meditation'")
//        let walkingMeditationCount = ratings?.filter("ratingName contains 'Walking Meditation'")
        
        let lowerBodyAverageRating = average(exerciseCount: lowerBodyCount)
        let upperBodyAverageRating = average(exerciseCount: upperBodyCount)
        let yogaOneAverageRating = average(exerciseCount: yogaOneCount)
        let yogaTwoAverageRating = average(exerciseCount: yogaTwoCount)
        
        pieChart.chartDescription?.text = "Most relaxing"
        
        //values for data entries
        lowerBodyStretchDataEntry.value = lowerBodyAverageRating
        lowerBodyStretchDataEntry.label = "LB"

        upperBodyStretchDataEntry.value = upperBodyAverageRating
        upperBodyStretchDataEntry.label = "UB"

        yogaOneDataEntry.value = yogaOneAverageRating
        yogaOneDataEntry.label = "Y1"

        yogaTwoDataEntry.value = yogaTwoAverageRating
        yogaTwoDataEntry.label = "Y2"


        //data entries
        dataEntries = [lowerBodyStretchDataEntry, upperBodyStretchDataEntry, yogaOneDataEntry, yogaTwoDataEntry]

        updateChartData()
    }
    
    func updateChartData(){

        let chartDataSet = PieChartDataSet(values: dataEntries, label: nil)
        let chartData = PieChartData(dataSet: chartDataSet)

        let colours = [UIColor(hexString: "7480FF"), UIColor(hexString: "FF764B")]
        chartDataSet.colors = colours as! [NSUIColor]

        pieChart.data = chartData

    }
    
    func average(exerciseCount : Results<Rating>?) -> Double {
        
        let entry1 = exerciseCount?.filter("rated == 1").count
        let entry2 = exerciseCount?.filter("rated == 2").count
        let entry3 = exerciseCount?.filter("rated == 3").count
        let entry4 = exerciseCount?.filter("rated == 4").count
        let entry5 = exerciseCount?.filter("rated == 5").count
        
        let value1 = (Double(entry1!) * 0.2)/(Double(ratings!.count))
        let value2 = (Double(entry2!) * 0.4)/(Double(ratings!.count))
        let value3 = (Double(entry3!) * 0.6)/(Double(ratings!.count))
        let value4 = (Double(entry4!) * 0.8)/(Double(ratings!.count))
        let value5 = (Double(entry5!) * 1)/(Double(ratings!.count))
        
        let average = (value1 + value2 + value3 + value4 + value5) * 10
        
        return average
    }
    
}






























