//
// When organizing the world into continental collections, the standard geographical approach divides it into 7 continents:
//
// 6.0.continents  (Africa, Asia, North America, South America, Europe, Oceania, Antarctica)
//
// - 6.11.Africa, 
// - 6.12.Asia - The largest collection, including:
//  - East Asia (China, Japan, Korea, Mongolia)
//  - Southeast Asia (Indonesia, Thailand, Vietnam, Philippines, etc.)
//  - South Asia (India, Pakistan, Bangladesh, Sri Lanka, etc.)
//  - Central Asia (Kazakhstan, Uzbekistan, etc.)
//  - Western Asia/Middle East (Saudi Arabia, Iran, Turkey, etc.)
//
// - 6.13.North America,    - Canada, United States, Mexico, and Central American countries down to Panama
// - 6.14.South America,    - All countries from Colombia down to Chile and Argentina
// - 6.15.Europe            - From Iceland to Russia (western part), including the UK, Nordic countries, Eastern Europe, etc.
// - 6.16.Oceania           - Australia, New Zealand, Papua New Guinea, and Pacific island nations (Fiji, Samoa, etc.
// - 6.17.Antarctica,       - No permanent countries, but claimed territories by various nations
//
// 6.1.classification_block
//
// Some alternative organizational approaches you might consider for your database:
//
//  Economic/Regional Blocks:   EU, ASEAN, NAFTA/USMCA, African Union, etc.
//  UN Regional Groups:         Africa, Asia-Pacific, Eastern Europe, Latin America & Caribbean, Western Europe & Others
//  Cultural/Linguistic:        Francophone, Anglophone, Arabic-speaking, etc.
//  Development Classification: Developed, Developing, Least Developed Countries


MERGE (c:Continent {name: "Africa"}) 
ON CREATE SET c = { 
    name: "Africa", 
    code: "AF", 
    area: 30370000, 
    population: 1400000000,
    countries: 54,
    description: "The second-largest and second-most populous continent"
} 
RETURN c;

MERGE (c:Continent {name: "Asia"}) 
ON CREATE SET c = { 
    name: "Asia", 
    code: "AS", 
    area: 44579000, 
    population: 4600000000,
    countries: 50,
    description: "The largest and most populous continent"
} 
RETURN c;

MERGE (c:Continent {name: "Europe"}) 
ON CREATE SET c = { 
    name: "Europe", 
    code: "EU", 
    area: 10180000, 
    population: 750000000,
    countries: 44,
    description: "A continent located entirely in the Northern Hemisphere"
} 
RETURN c;

MERGE (c:Continent {name: "North America"}) 
ON CREATE SET c = { 
    name: "North America", 
    code: "NA", 
    area: 24709000, 
    population: 580000000,
    countries: 23,
    description: "A continent in the Northern Hemisphere, almost entirely within the Western Hemisphere"
} 
RETURN c;

MERGE (c:Continent {name: "South America"}) 
ON CREATE SET c = { 
    name: "South America", 
    code: "SA", 
    area: 17840000, 
    population: 430000000,
    countries: 12,
    description: "A continent in the Western Hemisphere, mostly in the Southern Hemisphere"
} 
RETURN c;

MERGE (c:Continent {name: "Oceania"}) 
ON CREATE SET c = { 
    name: "Oceania", 
    code: "OC", 
    area: 8600000, 
    population: 45000000,
    countries: 14,
    description: "The smallest continent, also known as Oceania, includes Australia and Pacific islands"
} 
RETURN c;

MERGE (c:Continent {name: "Antarctica"}) 
ON CREATE SET c = { 
    name: "Antarctica", 
    code: "AN", 
    area: 14200000, 
    population: 0,
    countries: 0,
    description: "The southernmost continent, covered by ice, with no permanent residents"
} 
RETURN c;