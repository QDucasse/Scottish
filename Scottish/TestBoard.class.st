Class {
	#name : #TestBoard,
	#superclass : #TestCase,
	#category : #Scottish
}

{ #category : #tests }
TestBoard >> testAddingACardInAnOccupiedPlace [
	"sn the stoneNumber and y the lineNumber"
	
	| b c1 c2 sn y |
	b := ECOBoard new.
	c1 := ECOCard A1.
	c2 := ECOCard F2.
	sn := 1.
	y := 1.
	b add: c1 atX: sn atY: y.
	b add: c2 atX: sn atY: y.
	self assert: (b table at: sn at: y) equals: c1.
	self deny: (b canPlayAtX: sn atY: y)  
	  
]

{ #category : #tests }
TestBoard >> testInitializeEmptyBoard [

	| b |
	b := ECOBoard new.
	self assert: ((b sideForPlayer: #Player1) allSatisfy: [ :g | g isEmpty]).
	self assert: ((b sideForPlayer: #Player2) allSatisfy: [ :g | g isEmpty]).
	
]
