//: Playground - noun: a place where people can play

import UIKit

//Ingredients

var maxAge : Int = -1       //holds age of oldest player
var player : Int = -1       //oldest player's jersey number
var totalAge : Int = 0      //used to calculate avg age
var avgAge: Double = 0.00
var totalHeight : Int = 0   //used to calculate avg height
var avgHeight: Double = 0.00
//Dictionary holdig player's jersey number and their age
var playerAge : [Int : Int] = [15 : 27, 39 : 23, 29 : 29, 11 : 29 , 28 : 30, 81 : 36, 88 :26 , 16 : 25, 72 : 23, 65 : 24, 86 : 21, 14 : 27, 19 : 27, 26 : 28, 6 : 31, 4 : 28, 2 : 32, 32 : 37, 5 : 24, 7 : 30, 43 : 24, 57 : 24, 50 : 30, 33 : 26 ]
//Dictionary holding player's jersey number and coutry
var playerCountry : [Int : String ] = [15 : "RUS" , 39 : "CAN" , 29 : "CAN" , 11 : "CAN" , 28 : "CAN", 81 : "SVK", 88 : "USA", 16 : "SWE", 72 : "RUS", 65 : "CAN", 86 : "FIN", 14 : "LVA", 19 : "CAN", 26 : "CAN", 6 : "CAN", 4 : "SWE", 2 : "CAN", 32 : "CZE" , 5 : "SWE" , 7 : "CAN", 43 : "SWE" , 57 : "USA", 50 : "CAN", 33 : "USA" ]
//Dictionary holding player's jersey number and their age (first dictionary is destroyed as each tuple is processed, so need a second)
var playerAge2 : [Int : Int] = [15 : 27, 39 : 23, 29 : 29, 11 : 29 , 28 : 30, 81 : 36, 88 :26 , 16 : 25, 72 : 23, 65 : 24, 86 : 21, 14 : 27, 19 : 27, 26 : 28, 6 : 31, 4 : 28, 2 : 32, 32 : 37, 5 : 24, 7 : 30, 43 : 24, 57 : 24, 50 : 30, 33 : 26 ]
//Dictionary holding player's jersey number and their height in inches
var playerHeight : [Int : Int ] = [15 : 76, 39 : 74, 29 : 76 , 11 : 73 , 28 : 72, 81 : 73, 88 : 71, 16 : 72, 72 : 71, 65 : 71, 86 : 71, 14 : 74, 19 : 74, 26 : 28, 6 : 71, 4 : 75, 2 : 73, 32 : 73, 5 : 74, 7 : 75, 43 : 80, 57 : 74, 50 : 74, 33 : 78]
//Dictionary holding player's jersey number and their birth month
var playerMonth : [Int : Int ] = [15 : 5 , 39 : 5 , 29 : 3 , 11 : 7 , 28 : 8, 81 : 1, 88 : 11, 16 : 5, 72 : 10, 65 : 7, 86 : 9, 14 : 5, 19 : 4, 26 : 12, 6 : 10, 4 : 6, 2 : 7, 32 : 9 , 5 : 10 , 7 : 4, 43 : 5 , 57 : 6, 50 : 12, 33 : 12 ]
//Dictionary holding months and total number of births in that month
var months : [String : Int] = [ "January" : 0, "February" : 0, "March" : 0, "April" : 0, "May" : 0, "June" : 0, "July" : 0, "August" : 0, "September" : 0, "October" : 0, "November" : 0, "December" : 0]
var winningMonth = ""
var monthCount = -1


//Recipes

var str = "Week 6: Chicago Blackhawks \nFelix Sotres \n\nSince Playgrounds doesnt like working with nested dictionaries (processing time is ridic), I will take a more straightforward approach.\n"
println(str)

println("\n\nSorting players from oldest to youngest:\n")

//Function will sort players from oldest to youngest
func sortByAge()-> Void {
    //for each player figure out if they are the oldest
    for (number, age) in playerAge{
        if(age != -1){
        //if the current tuple hasnt already been accounted for (as set value is -1) then find out if theyre the oldest
        calcAge(number, age)
        }
    }
    //print oldest player
    print("Player Number : \(player) Player Age: \(maxAge), ")
    playerAge[player] = -1      //After the oldest player in the dictionary is printed, delete their entry ( set to -1)
    maxAge = -1
}


//This function holds a global variable of the oldest player in the iteration of the dictionary
func calcAge(numPlayer : Int, currentAge : Int)-> Void {
    
    //if the current player is older than the previous, set them as the oldest player
    if(maxAge < currentAge){
            maxAge = currentAge
            player = numPlayer
    }
    
}

//Iterate through the array so each time the oldest player is printed out
for var cnt = 0; cnt < playerAge.count; cnt++ {
    sortByAge()
    
}

println("\n\nSorting players by Country:\n")

//function prints out players country in alphabetical order
func sortByCountry()-> Void{
    
    //Iterate through each player in the dictionary and print out if it matches the country. 
    //The control (for) statements are checking for a particular country in alphabetical order to
    //print out the results as desired.
    
    //Canada
    for (number, country) in playerCountry{
        if( country == "CAN"){
            printCountry(number, country)
        }
    }
    //Czech republic
    for (number, country) in playerCountry{
        if( country == "CZE"){
            printCountry(number, country)
        }
    }
    //Finland
    for (number, country) in playerCountry{
        if( country == "FIN"){
            printCountry(number, country)
        }
    }
    //Latvia
    for (number, country) in playerCountry{
        if( country == "LVA"){
            printCountry(number, country)
        }
    }
    //Russia
    for (number, country) in playerCountry{
        if( country == "RUS"){
            printCountry(number, country)
        }
    }
    //Slovakia
    for (number, country) in playerCountry{
        if( country == "SVK"){
            printCountry(number, country)
        }
    }
    //Sweeden
    for (number, country) in playerCountry{
        if( country == "SWE"){
            printCountry(number, country)
        }
    }
    //USA
    for (number, country) in playerCountry{
        if( country == "USA"){
            printCountry(number, country)
        }
    }
    
}

func printCountry(playerNum : Int, country :String) -> Void{
    print("Player Number: \(playerNum) Player Country: \(country), ")
}

sortByCountry()





println("\n\nCalculating average age:\n")

//function iterates through entire players, adds their age, and divides by total players giving avg age
func calcAvgAge()-> Void{
    for (plyrNumber, plyrAge) in playerAge2{
        //through each iteration add the players age to global variable
        totalAge += plyrAge
        
    }
    //calculate avg age
    avgAge = Double(totalAge) / Double(playerAge2.count)
    
    println("Total Age: \(totalAge) , Total Players: \(playerAge2.count), Average Age: \(avgAge).")
}

calcAvgAge()




println("\n\nCalculating average height (in INCHES):\n")

//Function calculates avg height (in inches) by iterating through dictionary of players, adding all their heights, and dividing by total amount of players
func calcAvgHeight()-> Void{
    for (plyrNumber, plyrHeight) in playerHeight{
        //add heights to global variable
        totalHeight += plyrHeight
        
    }
    //calculate avg height in inches
    avgHeight = Double(totalHeight) / Double(playerHeight.count)
    
    println("Total Height: \(totalHeight) in. , Total Players: \(playerHeight.count), Average Height: \(avgHeight) in.")
}

calcAvgHeight()

println("\n\nFind out which month had the most births in it:\n")

//function finds out which month had most births by iterating through the array and adding the number of births depending on the month
func calcMonths()->Void{
    
    for (plyr, month) in playerMonth{
        //add one birth to a global variable (dictionary) of months to keep tally of which month had the most births
        switch month{
        case 1:
            months["January"] = months["January"]! + 1
        case 2:
            months["February"] = months["February"]! + 1
        case 3:
            months["March"] = months["March"]! + 1
        case 4:
            months["April"] = months["April"]! + 1
        case 5:
            months["May"] = months["May"]! + 1
        case 6:
            months["June"] = months["June"]! + 1
        case 7:
            months["July"] = months["July"]! + 1
        case 8:
            months["August"] = months["August"]! + 1
        case 9:
            months["September"] = months["September"]! + 1
        case 10:
            months["October"] = months["October"]! + 1
        case 11:
            months["November"] = months["November"]! + 1
        case 12:
            months["December"] = months["December"]! + 1
        default:
            print("")
        }
    }
    
    //Now that tally of births has been made, find out which month has the most births
    for (monthName, births) in months{
        //for each month in the Dictionary find out if it has the largest number of births
        maxMonth(monthName, births)
    }
    //print results
    print("Month with most births: \(winningMonth) Total Births: \(monthCount)")
    
}

//takes the curent month (with its number of births) and sees if it is the moth with the most births
func maxMonth(month : String, totalBirths : Int)-> Void {
    //use global variables to see if current month has more births that last
    if(monthCount < totalBirths){
        //if current month has more births
        monthCount = totalBirths        //set current birth count to be the max
        winningMonth = month            //set current month to be the one with the most births in it
    }
    
}

calcMonths()




