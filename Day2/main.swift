//
//  main.swift
//  Day2
//
//  Created by MacStudent on 2019-10-09.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation



// Nitin Ja
//
var finalStr = String()
var strEx = "aaabbeeeertuuu"

print(strEx + "\n")

var prev = strEx.prefix(1)
finalStr = String(prev)

print(prev)

var count = 1;
for i in 0..<strEx.count {

    let loc = strEx.suffix(strEx.count - i)
    let next = loc.prefix(0)

    print(loc + " nj " + next + " nj " +  + strEx)
    if(next == prev){
        count += 1
    }else{
         finalStr = finalStr + prev + "\(count)"
        count = 1
    }

    prev = next

}

print(finalStr)



///////--- Array ---------

var a: [Int]
a = [Int]()

a.append(20)
a.insert(9, at: 1)
a.append(2)
a.append(22)
a.append(203)
a.append(2037)
a.append(2032)

a[3...5] = [3,4,9,8,0,98,09,980,77,55]


for i in 0..<a.count{
    print("\(a[i])" )
}

var b = Array.init(repeating: 0, count: 5)

for i in 0..<b.count{
    print(b[i])
}

a = a+b
print(a[0])



var myarr = [[Int]]()

myarr = [[1, 2], [3, 4], [5, 6], [7, 8]]

//myarr[0][4] = [3, 7]
myarr.append([3, 4])

print(myarr[0][0])


// 1
for i in 0..<myarr.count {
    print(String(format: "*** %d %d ***\n", myarr[i][0], myarr[i][1]))

}

// 2
for row in myarr{

    for item in row {
        print(item, separator: "", terminator: "")

    }

    print("")

}

//////--- SET ------------

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]

let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

let uSet = oddDigits.union(evenDigits).sorted()
print(uSet)

let iSet = oddDigits.intersection(evenDigits).sorted()
print(iSet)

let subSet = oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
print(subSet)

let symSet = oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
print(symSet)

var countrySet: Set<String> = ["India", "USA", "Canada"]
countrySet.insert("Russia")

countrySet.insert("Japan")

for country in countrySet.sorted(){
    print(country)
}

///-----Dictionaries -----------------

//var dictCountry = Dictionary<Int, String>()
//var dictiCountry = [Int: String]()

var dictioCountry = [1: "USA", 2: "Canada"]

print(dictioCountry.count)

dictioCountry[2] = "India"
dictioCountry.updateValue("Japan", forKey: 3)

for item in dictioCountry {
    print(item.key, item.value, separator: "", terminator: "\n")
}

for (k, v) in dictioCountry {
    print(k, v, separator: "", terminator: "\n")
}
