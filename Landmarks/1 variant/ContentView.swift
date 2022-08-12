//
//  ContentView.swift
//  Landmarks
//
//  Created by Vobagav on 16.06.2022.
//

//import SwiftUI
//
//
//struct ContentView: View {
//    
//    @State private var checkAmount: Int = 0
//    @State private var numberOfPeople = 2
//    @State private var tipPercentage = 20
//    @State private var tipPercentages = [20, 30, 50]
//    
//    @FocusState private var amountIsFocused: Bool
//    
//    var totalPerPerson: Double {
//        let peopleCount = Double(numberOfPeople + 2)
//        let tipSelection = Double(tipPercentage)
//        
//        let tipValue = checkAmount / 100 * tipPercentage
//        let grandTotal = checkAmount + tipValue
//        let amountPerPerson = Double(grandTotal) / peopleCount
//        
//        return amountPerPerson
//    }
//    
//    var body: some View {
//        NavigationView {
//            Form {
//                
//                Section {
//                    TextField("Amount",
//                              value: $checkAmount,
//                              format: .currency(code: Locale.current.currencyCode ?? "USD"))
//                    .keyboardType(.decimalPad)
//                }
//                .focused($amountIsFocused)
//                
//                Section {
//                    Picker("Number Of People",
//                           selection: $numberOfPeople) {
//                        ForEach(2 ..< 100) {
//                            Text("\($0) people")
//                        }
//                    }
//                }
//                
//                Section {
//                    
//                    Picker("Tip percentage", selection: $tipPercentage) {
//                        ForEach(tipPercentages, id: \.self) {
//                            Text($0, format: .percent)
//                        }
//                    }.pickerStyle(.segmented)
//                } header: {
//                    Text("How much tip do you want to leave?")
//                }
//                
//                Section {
//                    Text(totalPerPerson, format: .currency(code: Locale.current.currencyCode ?? "USD"))
//                }
//            }
//            .navigationTitle("CHU CHUWUD")
//            .toolbar {
//                ToolbarItemGroup(placement: .keyboard) {
//                    Spacer()
//                    Button("Done") {
//                        amountIsFocused = false
//                    }
//                }
//            }
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//\]]=\]=]\=][\

