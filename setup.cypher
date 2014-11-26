CREATE (person:Category {name: "People", path: "people"}),
  (politician:Category {name: "Politicians", path: "politicians"}),
  (country:Category {name: "Countries", path: "countries"}),
  (year:Category {name: "Years", path: "years"}),
  (election:Category {name: "Elections", path: "elections"}),
  (politicalOffice:Category {name: "Political offices", path: "political-offices"}),
  (appointments:Category {name: "Appointments", path: "appointments"}),
  (dc:Thing {name: "David Cameron", path: "david-cameron", schemaName: "David Cameron"}),
  (gb:Thing {name: "Gordon Brown", path: "gordon-brown", schemaName: "Gordon Brown"}),
  (uk:Thing {name: "United Kingdom", path: "uk", schemaName: "United Kingdom"}),
  (chancellor:Thing {name: "Chancellor of the Exchequer", path: "chancellor-of-the-exchequer"}),
  (primeMinister:Thing {name: "Prime Minister", path: "prime-minister"}),
  (twentyFourteen:Thing {name: "2014", year: 2014, path: "2014"}),
  (twentyTen:Thing {name: "2010", year: 2010, path: "2010"}),
  (nineteenNinetySeven:Thing {name: "1997", year: 1997, path: "1997"}),
  (ukElection2010:Thing {name: "2010 UK Election", path: "2010-uk-election"}),
  (dc)-[:IS_A]->(person),
  (dc)-[:IS_A]->(politician),
  (gb)-[:IS_A]->(person),
  (gb)-[:IS_A]->(politician),
  (uk)-[:IS_A]->(country),
  (twentyFourteen)-[:IS_A]->(year),
  (twentyTen)-[:IS_A]->(year),
  (nineteenNinetySeven)-[:IS_A]->(year),
  (chancellor)-[:IS_A]->(politicalOffice),
  (gb)-[:HELD_OFFICE {from: 1997, to: 2007}]->(chancellor),
  (ukElection2010)-[:IS_A]->(election),
  (ukElection2010)-[:HELD_IN]->(uk),
  (ukElection2010)-[:WON_BY]->(dc),
  (ukElection2010)-[:HELD_ON]->(twentyTen)
