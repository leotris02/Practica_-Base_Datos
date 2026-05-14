// =======================
// NODOS: PERSONAS
// =======================

CREATE
(alice:Person {id:1, name:'Alice', age:28}),
(bob:Person {id:2, name:'Bob', age:31}),
(carla:Person {id:3, name:'Carla', age:26}),
(david:Person {id:4, name:'David', age:35}),
(elena:Person {id:5, name:'Elena', age:29}),
(frank:Person {id:6, name:'Frank', age:40}),
(grace:Person {id:7, name:'Grace', age:27}),
(hugo:Person {id:8, name:'Hugo', age:33}),
(irene:Person {id:9, name:'Irene', age:30}),
(javier:Person {id:10, name:'Javier', age:32});

// =======================
// NODOS: UBICACIONES
// =======================

CREATE
(madrid:Location {name:'Madrid'}),
(barcelona:Location {name:'Barcelona'}),
(valencia:Location {name:'Valencia'}),
(sevilla:Location {name:'Sevilla'}),
(zaragoza:Location {name:'Zaragoza'}),
(bilbao:Location {name:'Bilbao'});

// =======================
// RELACIONES DE AMISTAD
// =======================

CREATE
(alice)-[:FRIEND]->(bob),
(bob)-[:FRIEND]->(alice),

(alice)-[:FRIEND]->(carla),
(carla)-[:FRIEND]->(alice),

(bob)-[:FRIEND]->(david),
(david)-[:FRIEND]->(bob),

(carla)-[:FRIEND]->(elena),
(elena)-[:FRIEND]->(carla),

(elena)-[:FRIEND]->(grace),
(grace)-[:FRIEND]->(elena),

(frank)-[:FRIEND]->(hugo),
(hugo)-[:FRIEND]->(frank),

(hugo)-[:FRIEND]->(irene),
(irene)-[:FRIEND]->(hugo),

(irene)-[:FRIEND]->(javier),
(javier)-[:FRIEND]->(irene);

// =======================
// NODOS: VIAJES
// =======================

CREATE
(t1:Trip {id:101, date:'2026-05-10'}),
(t2:Trip {id:102, date:'2026-05-11'}),
(t3:Trip {id:103, date:'2026-05-12'}),
(t4:Trip {id:104, date:'2026-05-13'}),
(t5:Trip {id:105, date:'2026-05-14'}),
(t6:Trip {id:106, date:'2026-05-15'}),
(t7:Trip {id:107, date:'2026-05-16'});

// =======================
// RELACIONES: ORIGEN Y DESTINO
// =======================

CREATE
(t1)-[:STARTS_AT]->(madrid),
(t1)-[:ENDS_AT]->(barcelona),

(t2)-[:STARTS_AT]->(madrid),
(t2)-[:ENDS_AT]->(valencia),

(t3)-[:STARTS_AT]->(sevilla),
(t3)-[:ENDS_AT]->(madrid),

(t4)-[:STARTS_AT]->(zaragoza),
(t4)-[:ENDS_AT]->(barcelona),

(t5)-[:STARTS_AT]->(madrid),
(t5)-[:ENDS_AT]->(barcelona),

(t6)-[:STARTS_AT]->(bilbao),
(t6)-[:ENDS_AT]->(madrid),

(t7)-[:STARTS_AT]->(madrid),
(t7)-[:ENDS_AT]->(sevilla);

// =======================
// RELACIONES: PARTICIPACIÓN
// =======================

CREATE
(alice)-[:JOINED]->(t1),
(bob)-[:JOINED]->(t1),

(carla)-[:JOINED]->(t2),
(david)-[:JOINED]->(t2),

(elena)-[:JOINED]->(t3),
(frank)-[:JOINED]->(t3),

(grace)-[:JOINED]->(t4),
(hugo)-[:JOINED]->(t4),

(irene)-[:JOINED]->(t5),
(alice)-[:JOINED]->(t5),

(javier)-[:JOINED]->(t6),
(bob)-[:JOINED]->(t6),

(carla)-[:JOINED]->(t7),
(grace)-[:JOINED]->(t7);