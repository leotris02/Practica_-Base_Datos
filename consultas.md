### Amigos directos
MATCH (p:Person {name:'Alice'})-[:FRIEND]->(friend)
RETURN friend.name;

### Amigos de amigos
MATCH (p:Person {name:'Alice'})-[:FRIEND]->()-[:FRIEND]->(fof)
WHERE fof.name <> 'Alice'
RETURN DISTINCT fof.name;

### rutas similares
MATCH (p:Person {name:'Alice'})-[:JOINED]->(t1:Trip),
      (other:Person)-[:JOINED]->(t2:Trip),
      (t1)-[:STARTS_AT]->(start),
      (t1)-[:ENDS_AT]->(end),
      (t2)-[:STARTS_AT]->(start),
      (t2)-[:ENDS_AT]->(end)
WHERE other.name <> 'Alice'
RETURN DISTINCT other.name, start.name, end.name;

### Vaiajes similares y amigos 
MATCH (user:Person {name:'Alice'})
MATCH (candidate:Person)-[:JOINED]->(trip:Trip)
MATCH (trip)-[:STARTS_AT]->(start)
MATCH (trip)-[:ENDS_AT]->(end)

WHERE candidate <> user

AND EXISTS {
    MATCH (user)-[:JOINED]->(myTrip:Trip)
    MATCH (myTrip)-[:STARTS_AT]->(start)
    MATCH (myTrip)-[:ENDS_AT]->(end)
}

RETURN DISTINCT candidate.name;
