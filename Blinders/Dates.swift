//
//  Dates.swift
//  Blinders
//
//  Created by Evan Laird on 3/21/16.
//  Copyright © 2016 Evan. All rights reserved.
//

import Foundation
import UIKit

var selectedDate: Dictionary<String, String> = [:]
var selectedKind: String = ""
var selectedBudget: String = ""

//FoodDates
let foodCheap = ["whatYouNeed": "Nothing, but an empty belly.", "attire": "Whatever you want.", "driveTime": "26 minutes", "other": "N/A", "address": "1812 Montgomery Street Forth Worth, TX 76107", "title": "Taco Heads", "description": "Damn Fine Tacos + Food Truck Soul + Fresh Pressed Margaritas"]

let foodMod = ["whatYouNeed": "Nothing, but an empty belly.", "attire": "Casual", "driveTime": "25 minutes", "other": "N/A", "address": "1001 Magnolia Ave, Fort Worth, TX 76104", "title": "Chimera Brewing Company", "description": "We make beer. That is what we are passionate about. We are also passionate about our traditional Italian pizza using dough and sauce made in house. And unicorns. We love unicorns."]

let foodPricey = ["whatYouNeed": "Nothing, but an empty belly.", "attire": "High-End Casual/Business Casual", "driveTime": "23 minutes", "other": "N/A", "address": "111 w. 4th st, Fort Worth, TX 76102", "title": "Simply Fondue", "description": "At Simply Fondue, we are committed to bringing you simply the best fondue dining experience found anywhere. We guarantee a relaxed and casual dining atmosphere that moves along at a leisurely pace. We use only the finest ingredients and make all of our sauces, batters, and dressings from scratch daily. Enjoy a selection from our extensive wine list or one of the more than 100 hand-crafted martinis and specialty drinks during your visit."]

let foodHighEnd = ["whatYouNeed": "Cash. This is cash only.", "attire": "Casual", "driveTime": "10 minutes", "other": "Better bring your sweet tooth!", "address": "2832 S Cooper St, Arlington, TX 76015", "title": "Cooper Street Bakery", "description": "Cooper Street Bakery is a local bakery serving cakes, cookies, and all sorts of goodies, freshly made every day."]

//NightlifeDates


let nightCheap = ["whatYouNeed": "Just be ready for a good time. Maybe get your singing voice ready!", "attire": "Nightlife attire", "driveTime": "27 minutes", "other": "Must be over 21", "address": "5223 Camp Bowie Blvd, Fort Worth, TX 76107", "title": "Sarah's Place", "description": "Local bar with big TV's, juke box, darts, and shuffleboard. Also karaoke on Mondays, Wednesdays, and Saturdays."]

let nightMod = ["whatYouNeed": "Just be ready for a good time.", "attire": "Nightlife attire","driveTime": "26 minutes", "other": "Must be over 21", "address": "3017 Morton St, Fort Worth, TX 76017", "title": "Capital Bar", "description": "Two awesome bars inside, live bands outside, and an upstairs lounge"]

let nightPriceyAndHighEnd = ["whatYouNeed": "Show up with an empty belly and a love for wine.", "attire": "High-End/Business Casual", "driveTime": "23 minutes", "other": "Must be over 21 to drink.", "address": "800 Main St, Fort Worth, TX 76102", "title": "The Capital Grille", "description": "Discover dry aged steaks, fresh seafood, and world-class wines at The Capital Grille in downtown Fort Worth, TX."]

//Shopping Dates

let shopCheap = ["whatYouNeed": "Bring your wallet and others!", "attire": "Whatever you want", "driveTime": "23 minutes", "other": "N/A", "address": "420 Main St, Fort Worth, TX 76102", "title": "Sundance Square", "description": "Sundance Square is an award winning shopping, dining, and entertainment district spanning 35 blocks in the heart of downtown Fort Worth."]

let shopMod = ["whatYouNeed": "Bring your wallet and others!", "attire": "Whatever you want", "driveTime": "33 minutes", "other": "N/A", "address": "4800 S Hulen St, Fort Worth, TX 76132", "title": "Hulen Mall", "description": "Indoor shopping mall with premiere stores"]

let shopPriceyAndHighEnd = ["whatYouNeed": "Bring your wallet and others!", "attire": "Whatever you want", "driveTime": "26 minutes", "other": "N/A", "address": "N University Dr and W 7th, Fort Worth, TX 76107", "title": "West 7th Fort Worth", "description": "West 7th is the premiere shopping, dining and entertainment destination situated in the popular Fort Worth Cultural District. West 7th encompasses nearly five blocks pedestrian-friendly urban elements."]

//Active Life

let activeCheap = ["whatYouNeed": "A water bottle, camera, and maybe some snacks!", "attire": "Athletic gear", "driveTime": "4 minutes", "other": "N/A", "address": "201 Center St, Arlington, TX 76011", "title": "Front and Center Cyclery", "description": "Rent some bikes and explore the city while getting some exercise!"]

let activeMod = ["whatYouNeed": "Bring a camera and be prepared to walk!", "attire": "Walking around clothes", "driveTime": "30 minutes", "other": "N/A", "address": "130 E Exchange Ave, Fort Worth, TX 76106", "title": "Stockyards Station", "description": "Go on a beautiful walking tour and even explore the amusement park if you would like!"]

let activePriceyAndHighEnd = ["whatYouNeed": "Get ready to dance the night away", "attire": "Clothes comfortable to dance in.", "driveTime": "28 minutes", "other": "N/A", "address": "3421 W 7th St Fort Worth, TX 76107", "title": "Fred Astaire Dance Studio of Fort Worth", "description": "Learn how to dance with the best insructors in Fort Worth!"]

//Arts and Ent

let artsCheap = ["whatYouNeed": "Grab a blanket, some pillows, and some snacks!", "attire": "Comfortable and weather appropriate", "driveTime": "25 minutes", "other": "N/A", "address": "223 NE 4th St, Fort Worth, TX 76164", "title": "Coyote Drive-In", "description": "Catch a quick flick and an old school drive-in movie theatre!"]

let artsMod = ["whatYouNeed": "Prepare for some laughs and a good time!", "attire": "Casual", "driveTime": "25 minutes", "other": "N/A", "address": "312 Houston St, Fort Worth, TX 76102", "title": "Four Day Weekend", "description": "Four Day Weekend is a preforming arts and comedy club catch a showing!"]

let artsPriceyAndHighEnd = ["whatYouNeed": "Nothing but an eye for art.", "attire": "High", "driveTime": "23 minutes", "other": "N/A", "address": "111 Hampton St, Fort Worth, TX 76102", "title": "Artspace 111", "description": "Artspace 111 offers a striking setting for tours. Take one!"]





