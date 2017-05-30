//
//  ChartAxisValueString.swift
//  SwiftCharts
//
//  Created by ischuetz on 29/04/15.
//  Copyright (c) 2015 ivanschuetz. All rights reserved.
//

import UIKit

open class ChartAxisValueString: ChartAxisValue {
   
    let string: String
    
    public init(_ string: String = "", scalar: Double, labelSettings: ChartLabelSettings = ChartLabelSettings()) {
        self.string = string
        super.init(scalar: scalar, labelSettings: labelSettings)
    }
    
    public init(_ string: String = "", order: Int, labelSettings: ChartLabelSettings = ChartLabelSettings()) {
        self.string = string
        super.init(scalar: Double(order), labelSettings: labelSettings)
    }
    
    /// The labels that will be displayed in the chart
    override open var labels: [ChartAxisLabel] {
        let axisLabel = ChartAxisLabel(text: self.description, settings: self.labelSettings)
        axisLabel.hidden = self.hidden
        return self.hidden ? [] : [axisLabel]
    }
    
    // MARK: CustomStringConvertible

    override open var description: String {
        return self.string
    }
}
