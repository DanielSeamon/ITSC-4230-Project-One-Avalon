{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_enemyflying",
  "spriteId": {
    "name": "spr_enemyFlying",
    "path": "sprites/spr_enemyFlying/spr_enemyFlying.yy",
  },
  "solid": false,
  "visible": true,
  "managed": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "obj_enemyDirty",
    "path": "objects/obj_enemyDirty/obj_enemyDirty.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,},
  ],
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"fly_path","varType":5,"value":"dev_flier_path","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
  ],
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"clean_enemy","path":"objects/obj_enemyDirty/obj_enemyDirty.yy",},"objectId":{"name":"obj_enemyDirty","path":"objects/obj_enemyDirty/obj_enemyDirty.yy",},"value":"obj_enemyFlyingClean",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"hsp","path":"objects/obj_enemyDirty/obj_enemyDirty.yy",},"objectId":{"name":"obj_enemyDirty","path":"objects/obj_enemyDirty/obj_enemyDirty.yy",},"value":"0",},
  ],
  "parent": {
    "name": "Objects",
    "path": "folders/Objects.yy",
  },
}