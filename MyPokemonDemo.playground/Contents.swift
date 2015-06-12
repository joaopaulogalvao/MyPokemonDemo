//: Playground - noun: a place where people can play

import UIKit

class Pokemon {
  
  var speed = 0
  var hitReceived = 0
  var health = 100
  var hitPower = 0
  
  func attack(){
    
  }
  
  func defense(){
    
  }
  
  func specialAttack(){
    health - 1
    speed = 100
  }
  
  func specialDefense(){
    health - 1
    speed = 100
  }
  
  func healthDownBy(hitPower: Int, hitBy: Pokemon) -> Int{
      hitReceived = health - hitPower
    return hitReceived
  }
  
  func speedDown(){
    speed - 1
  }
  
  
}

// Create Bulbasaur Class
class Bulbasaur : Pokemon {
  
  override init(){
    super.init()
    self.hitPower = 49
  }
  
  func grassAttack() -> Int{
    
    return self.hitPower * 2
    
  }
  
  func poisonAttack() -> Int{
    
    return self.hitPower * 3
  }
  
}

// Create Ivysaur Class
class Ivysaur : Pokemon {
  
}

// Create Charmeleon Class
class Charmaleon : Pokemon {
  
  //Init the Super class override something that has already been initialized
  override init() {
    super.init()
    self.hitPower = 49
  }
  
  func fireAttack() -> Int {
    
    return self.hitPower

  }
  
}

// Create Squirtle Class
class Squirtle : Pokemon {
  
  //Init the Super class
  override init() {
    super.init()
    self.hitPower = 48
  }
  
  func waterAttack() -> Int{
    
    return self.hitPower
  }
}

//Create Blastoise Class
class Blastoise : Pokemon {
  
  //Init the Super class
  override init() {
    super.init()
    self.hitPower = 83
  }
  
  func blasWaterAttack() -> Int{
    
    return self.hitPower
  }
}
  
//Create ButterFree Class
class Butterfree : Pokemon {
  
  //Init the Super class
  override init() {
    super.init()
    self.hitPower = 45
  }
  
  func bugAttack() -> Int{
    
    return self.hitPower
    
  }
  
}

//Create Pidgey Class
class Pidgey : Pokemon {
  
  //Init the Super class
  override init() {
    super.init()
    self.hitPower = 45
    self.speed = 56
  }
  
  func normal () -> Int{
    return self.speed
  }
  
  func flying() -> Int{
    return 90
  }
}

//Create Pikachu Class
class Pikachu : Pokemon {
  
  //Init the Super class
  override init() {
    super.init()
    self.hitPower = 55
  }
  
  func jump() -> Int{
    
    return self.hitPower
    
  }
  
  func electricAttack() -> Int{
    
    return 70
    
  }
}


//Create Paras Class
class Paras : Pokemon {
  
  //Init the Super class
  override init() {
    super.init()
    self.hitPower = 70
  }
  
  func bugAttack() -> Int{
    
    return self.hitPower
    
  }
  
  func grassAttack() -> Int{
    
    return 80
  }
}

//Create Mankey Class
class Mankey : Pokemon {
  
  //Init the Super class
  override init() {
    super.init()
    self.hitPower = 80
    self.speed = 100
  }
  
  func fightingAttack() -> Int{
    return self.hitPower
  }
  
}


let myBulby = Bulbasaur()
let myIvysaur = Ivysaur()
let myCharmaleon = Charmaleon()
let mySquirte = Squirtle()
let myBlastoise = Blastoise()
let myButterfree = Butterfree()
let myPidgey = Pidgey()
let myPikachu = Pikachu()
let myParas = Paras()
let myMankey = Mankey()


//My Ivysaur looses health
var totalDamageFirstFight = myIvysaur.healthDownBy(myBulby.grassAttack(), hitBy: myBulby)


//My Pikachu attacks myMankey
var totalDamageSecondFight = myMankey.healthDownBy(myPikachu.electricAttack(), hitBy: myPikachu)

//My Mankey attacks Paras
var totalDamageThirdFight = myParas.healthDownBy(myMankey.fightingAttack(), hitBy: myMankey)
  
  
  
  

