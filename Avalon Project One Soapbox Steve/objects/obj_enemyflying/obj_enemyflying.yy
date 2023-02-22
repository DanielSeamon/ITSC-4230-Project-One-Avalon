{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_enemyflying",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_enemyDirty","path":"objects/obj_enemyDirty/obj_enemyDirty.yy",},"propertyId":{"name":"clean_enemy","path":"objects/obj_enemyDirty/obj_enemyDirty.yy",},"value":"obj_enemyFlyingClean",},
  ],
  "parent": {
    "name": "Objects",
    "path": "folders/Objects.yy",
  },
  "parentObjectId": {
    "name": "obj_enemyDirty",
    "path": "objects/obj_enemyDirty/obj_enemyDirty.yy",
  },
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"fly_path","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"dev_flier_path","varType":5,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_enemyFlying",
    "path": "sprites/spr_enemyFlying/spr_enemyFlying.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}