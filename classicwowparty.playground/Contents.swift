import UIKit

/*
 Author: Daniel Favano
 Description: This is the second homework assignement of part 1 of the Swift class offered on pirple.com. The assignment requires you to explain use cases of when to use a tuple and when to use an array. It also requires you to explain what a range is and when you would use one.
 */


// Tuples: Typical use cases for tuples are when you want to associate a few properties together that represent something as a whole. It's meant for a particular thing not a collection of them.
// Example: Say we were building an application centered around World of Warcarft Classic. This application needed to associate players with there duty and class.

// duties
let tankDuty = "tanks"
let healerDuty = "healers"
let dpsDuty = "dps"

// We could represent a healer like below.
let healBot = (name: "HealBot", duty: healerDuty, class: "Priest")

// Tanks could be represented like so
let pallyPower = (name: "PallyPower", duty: tankDuty, class: "Paladin")

// Damage dealers like so
let necrotize = (name: "Necrotize", duty: dpsDuty, class: "Warlock")
let surprise = (name: "Surprise", duty: dpsDuty, class: "Rouge")
let alakazam = (name: "Alakazam", duty: dpsDuty, class: "Mage")


// Arrays: Typical use cases for arrays are when you want to group many values together. Arrays also make it easy to filter, search, add, and subtract values.
// Example: Following the first example say we now wanted to now represent all of the players in the tuples above in a party. As part of this we would also want to be able to search for healers or by any other duty. We also want to add or remove players from the party.

// We could group the players together and form a party like this
var party : [(String, String, String)] = [healBot, pallyPower, necrotize, surprise, alakazam]

// We could filter out the healers like so
let healers = party.filter({$0.1 == healerDuty})

// We could filter out the tanks like so
let tanks = party.filter({$0.1 == tankDuty})

// We could filter out the dps like so
let damageDealers = party.filter({$0.1 == dpsDuty})

// We could search for a player like so
let containsHealbot = party.contains(where: {$0.0 == "HealBot"})

// Report
print("Party \n", party)
print("\nHealers \n", healers)
print("\nTanks \n", tanks)
print("\nDamage Dealers \n", damageDealers)
print("\nHas a player named HealBot? \n", containsHealbot)

// Now say the healer left the party.

// The healers could be removed like so
party = party.filter({$0.0 != "HealBot"})
print("\nParty after the loss of the healer\n", party)

// Adding a new healer would look like so
let hotToTrott = (name: "HotToTrott", duty: healerDuty, class: "Druid")
party.append(hotToTrott)
print("\nParty with new healer\n", party)

// Ranges: The typical use case for ranges is if you are only want to do something with section of a collection.
// Example: Continueing with the example above now lets say we only want to print the last three party members that were added to the party.
print("\nLast three characters added to the party")
for character in party[2...]
{
    print(character)
}
