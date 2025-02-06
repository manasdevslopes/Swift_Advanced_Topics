/*:
 [< Previous](@previous)           [Home](Introduction)
 
 ## Practical Uses
 */
import Foundation

// This function is used for example 1 below
func countryInfo(name: String, population: Int, states: Int) {
  print("\(name) has \(population) people in \(states) states.")
}

// This dictionary is used for examples 2, 3 and 4 below
let countryDictionary: [String: Int] = [
  "Canada" : 37_000_000,
  "United States" : 332_278_000,
  "United Kingdom" : 67_886_000,
  "Japan" : 125_440_000,
  "Germany" : 83_190_000,
]
// Ctrl + Shift + Click - For Multiple cursor in Xcode
code(for: "1. Parameters in Functions") {
  // convert the countryInfo array in to one that will use a tuple for a parameter
  func countryInfo(_ country: (name: String, population: Int, states: Int)) {
    print("\(country.name) has \(country.population) people in \(country.states)")
  }
  countryInfo((name: "India", population: 1_500_000_000, states: 29))
}

code(for: "2. Returning Tuples") {
  // use the CountryDictionary to create a function that will return a tuple when provided the name of the country
  func countryInfo(_ name: String) -> (name: String, population: Int?) {
    return (name: name, population: countryDictionary[name])
  }
  print(countryInfo("India"))
  print(countryInfo("United States"))
  print(countryInfo("Australia"))
}

code(for: "3. TypeAlias") {
  // use a typeAlias to recreate the countryInfo function
  typealias countryData = (name: String, population: Int?)
  func countryInfo(_ name: String) -> countryData {
    return (name: name, population: countryDictionary[name])
  }
  print(countryInfo("India"))
  print(countryInfo("United States"))
  print(countryInfo("Germany"))
  
  let uk = countryInfo("United Kingdom")
  print(uk.population ?? "Unknown")
  let ukr = countryInfo("Ukraine")
  print(ukr.population ?? "Unknown")
}

code(for: "4. Covert Dictionary to Array of tuples") {
  // Map the CountryDictionary into an array of tuples
  let countryArray = countryDictionary.map { (name: $0, population: $1) }.sorted { $0.name < $1.name }
  for countryWithPopulation in countryArray {
    print("Country: \(countryWithPopulation.name), Population: \(countryWithPopulation.population)")
  }
}

code(for: "5. Sorting with Tuples") {
  // see also https://youtu.be/4ochXtdrd70
  // Use the Wine model and the allWines static array (found in the Sources folder for the playground)
  // To sort wines using multiple criteria
  let allWines = Wine.wines
  let allSortedWines = allWines.sorted { ($0.variety, $0.winery, $0.vintage) < ($1.variety, $1.winery, $1.vintage) }
  for wine in allWines {
    print(wine.winery, wine.variety, wine.vintage)
  }
  print("-------------------------------------------------")
  for wine in allSortedWines {
    print(wine.winery, wine.variety, wine.vintage)
  }
}
/*:
 
 [< Previous](@previous)           [Home](Introduction)
 */
