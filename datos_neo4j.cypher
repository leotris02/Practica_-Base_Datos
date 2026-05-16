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
(javier:Person {id:10, name:'Javier', age:32}),

(madrid:Location {name:'Madrid'}),
(barcelona:Location {name:'Barcelona'}),
(valencia:Location {name:'Valencia'}),
(sevilla:Location {name:'Sevilla'}),
(zaragoza:Location {name:'Zaragoza'}),
(bilbao:Location {name:'Bilbao'}),

(alice)-[:FRIEND_OF
]->(bob),
(bob)-[:FRIEND_OF
]->(alice),

(alice)-[:FRIEND_OF
]->(carla),
(carla)-[:FRIEND_OF
]->(alice),

(bob)-[:FRIEND_OF
]->(david),
(david)-[:FRIEND_OF
]->(bob),

(carla)-[:FRIEND_OF
]->(elena),
(elena)-[:FRIEND_OF
]->(carla),

(carla)-[:FRIEND_OF
]->(bob),
(bob)-[:FRIEND_OF
]->(carla),

(elena)-[:FRIEND_OF
]->(grace),
(grace)-[:FRIEND_OF
]->(elena),

(frank)-[:FRIEND_OF
]->(hugo),
(hugo)-[:FRIEND_OF
]->(frank),

(hugo)-[:FRIEND_OF
]->(irene),
(irene)-[:FRIEND_OF
]->(hugo),

(irene)-[:FRIEND_OF
]->(javier),
(javier)-[:FRIEND_OF
]->(irene),

(t1:Trip {id:101, date:'2026-05-10'}),
(t2:Trip {id:102, date:'2026-05-11'}),
(t3:Trip {id:103, date:'2026-05-12'}),
(t4:Trip {id:104, date:'2026-05-13'}),
(t5:Trip {id:105, date:'2026-05-14'}),
(t6:Trip {id:106, date:'2026-05-15'}),
(t7:Trip {id:107, date:'2026-05-16'}),

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
(t7)-[:ENDS_AT]->(sevilla),

(alice)-[:JOINED {rating: 5}]->(t1),
(bob)-[:JOINED {rating: 4}]->(t1),

(carla)-[:JOINED {rating: 2}]->(t2),
(david)-[:JOINED {rating: 3}]->(t2),

(elena)-[:JOINED {rating: 4}]->(t3),
(frank)-[:JOINED {rating: 5}]->(t3),

(grace)-[:JOINED {rating: 2}]->(t4),
(hugo)-[:JOINED {rating: 4}]->(t4),

(irene)-[:JOINED {rating: 3}]->(t5),
(alice)-[:JOINED {rating: 5}]->(t5),

(javier)-[:JOINED {rating: 4}]->(t6),
(bob)-[:JOINED {rating: 4}]->(t6),

(carla)-[:JOINED {rating: 2}]->(t7),
(grace)-[:JOINED {rating: 3}]->(t7);