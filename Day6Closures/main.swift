//
//  main.swift
//  Day6
//
//  Created by MacStudent on 2020-02-14.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

//Closures
func add(a:Int,b:Int)
{
    print(a+b)
}

add(a:10,b:20)

var f:(Int,Int)->Void
f=add

f(10,40)

func test(a:Int,b:(Int,Int)->Void)
{
    b(a,10)
}

test(a:20,b:f)

//string array sorting
var country=["Canada","Abd","India","Bhuttan","Nepal","China","USA","Mexico"]

func mySort(s1:String,s2:String)->Bool
{
    return s1>s2
}
 print(mySort(s1: "abc", s2: "aac"))

//print(country)
//country.sort()
/*let c=country.sorted()//will not sorted the country array and sorted value will be in c
print(country)
print(c)*/
 
//sorting by closure property
//country.sort(by: mySort(s1:s2:))
country.sort(by:
    {
        (s1: String, s2: String)->Bool in return s1>s2
    })


country.sort(by: {
    s1,s2 in return s1>s2
})

country.sort(by: {
    return $0>$1
})

country.sort(by: >)

print(country)
