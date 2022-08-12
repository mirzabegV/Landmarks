//
//  ContentView2.swift
//  Landmarks
//
//  Created by Vobagav on 01.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    
    @State private var checkAmount = 0
    @State private var numberOfPeople = 2
    @State private var tipsPercentages = [10, 20, 30]
    @State private var tipSelection = 20
    
    // MARK: - Focus
    
    @FocusState private var amountIsFocused: Bool
    
    // MARK: - Computed properties
    
    private var totalPerPerson: Double {
        let totalTips: Double = Double(tipSelection * checkAmount) / 100
        let amountWithTips: Double = totalTips + Double(checkAmount)
        let amountPerPerson = amountWithTips / Double((numberOfPeople) + 2)
        
        let roundedValue = (amountPerPerson * 100).rounded()/100
        
        return amountPerPerson
    }
    
    // MARK: - Util
    
    var decimalFormatter: NumberFormatter {
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    // MARK: - Body
    
    var body: some View {
        
        NavigationView {
            
            Form {
                
                Section {
                    TextField("Amount here",
                              value: $checkAmount,
                              format: .currency(code: Locale.current.currencyCode ?? "USD"))
                    .keyboardType(.decimalPad)
                }
                .focused($amountIsFocused)
                
                Section {
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2 ..< 100) {
                            Text("\($0) people")
                        }
                    }
                }
                
                Section {
                    Picker("Tip percentage", selection: $tipSelection) {
                        ForEach(tipsPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }.pickerStyle(.segmented)
                } header: {
                    Text("How much tip do you want to leave?")
                }
                
                Section {
                    Text(totalPerPerson,
                         format: .currency(
                            code: Locale.current.currencyCode
                            ?? "USD"))
                }
            }
            .navigationTitle("CHU CHUWUDAR")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done", action: {
                        amountIsFocused.toggle()
                    })
                }
            }
        }
        
    }
}
