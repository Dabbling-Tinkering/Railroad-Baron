//
//  main.swift
//  Railroad Baron
//
//  Created by charles on 6/1/23.
//

import Foundation

let city1:City = .denver
let city2:City = .losAngeles

print("Pay off for \(city1.description) to \(city2.description) : \(payOff(for: city1, to: city2))")

print("City: \(city1.description) is in \(regionFor(city: city1)?.description ?? "uknown")")

let url = URL(filePath: "/Users/markdillon/Development/RailroadBaron/rr")

guard let data = try? Data(contentsOf: url) else {
    print("Unable to read: \(url.path)")
    exit(1)
}

guard let contents = String(data: data, encoding: .ascii) else {
    print("Invalid data in : \(url.path)")
    exit(1)

}

let lines = contents.split(separator: "\n")

/*
let temp = [Point:[Railroad]] = [
    
]
*/
var allData:Data = Data()

for line in lines {
    
    let section = line.split(separator: ",")
    if (!section.isEmpty) {
        var pointrr = ""
        let point = String(format: ".%@", section[0].trimmingCharacters(in: .whitespaces))
        var statement = ""
        if section.count > 1 {
            for index in 1..<section.count {
                if (!statement.isEmpty) {
                    statement += ", "
                }
                statement = statement + String(format: ".%@", section[index].trimmingCharacters(in: .whitespaces))
            }
            pointrr = String(format: "\t%@:[%@],\n", point,statement)
        
            print("\(pointrr)")
            let data = pointrr.data(using: .ascii)!
            allData.append(data)
            pointrr = ""

        }
        else {
            print("Point not assigned to railroad: \(point)")
        }
        
        
    }
    let saveurl = URL(filePath: "/Users/markdillon/Development/RailroadBaron/rrxcode")

    try! allData.write(to: saveurl)

}


/* var allData:Data = Data()

var line = "//NorthEast \n"
var data = line.data(using: .ascii)!
var pre = "ne"
var reg = ".northEast"
allData.append(data)
for index in 1...22 {
    let line = String(format:".%@%i:%@,\n",pre,index,reg)
    let data = line.data(using: .ascii)
    guard let data else {print("Error converting");exit(1)}
    allData.append(data)
}
line = "\n//SouthEast\n"
pre = "se"
reg = ".southEast"
data = line.data(using: .ascii)!
allData.append(data)
for index in 1...85 {
    let line = String(format:".%@%i:%@,\n",pre,index,reg)
    let data = line.data(using: .ascii)
    guard let data else {print("Error converting");exit(1)}
    allData.append(data)
}
line = "\n//NorthCentral\n"
pre = "nc"
reg = ".northCentral"
data = line.data(using: .ascii)!
allData.append(data)
for index in 1...55 {
    let line = String(format:".%@%i:%@,\n",pre,index,reg)
    let data = line.data(using: .ascii)
    guard let data else {print("Error converting");exit(1)}
    allData.append(data)
}
line = "\n//SouthCentral\n"
pre = "sc"
reg = ".southCentral"
data = line.data(using: .ascii)!
allData.append(data)
for index in 1...92 {
    let line = String(format:".%@%i:%@,\n",pre,index,reg)
    let data = line.data(using: .ascii)
    guard let data else {print("Error converting");exit(1)}
    allData.append(data)
}
line = "\n//Plains\n"
pre = "pl"
reg = ".plains"
data = line.data(using: .ascii)!
allData.append(data)
for index in 1...115 {
    let line = String(format:".%@%i:%@,\n",pre,index,reg)
    let data = line.data(using: .ascii)
    guard let data else {print("Error converting");exit(1)}
    allData.append(data)
}
line = "\n//NorthWest\n"
pre = "nw"
reg = ".northWest"
data = line.data(using: .ascii)!
allData.append(data)
for index in 1...84 {
    let line = String(format:".%@%i:%@,\n",pre,index,reg)
    let data = line.data(using: .ascii)
    guard let data else {print("Error converting");exit(1)}
    allData.append(data)
}
line = "\n//SouthWest\n"
pre = "sw"
reg = ".southWest"
data = line.data(using: .ascii)!
allData.append(data)
for index in 1...68 {
    let line = String(format:".%@%i:%@,\n",pre,index,reg)
    let data = line.data(using: .ascii)
    guard let data else {print("Error converting");exit(1)}
    allData.append(data)
}

let url = URL(filePath: "/Users/charles/Development/projects/RailroadBaron/points.txt")

try! allData.write(to: url)
*/
