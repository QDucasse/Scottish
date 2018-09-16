"
I represent the board of the game. 

I own a number of stones in which every player can put 3 cards.

I collaborate with both ECOCard, ECOPlayer, ECOStone and ECOGame

"
Class {
	#name : #ECOBoard,
	#superclass : #Object,
	#instVars : [
		'stoneNumber',
		'table'
	],
	#category : #Scottish
}

{ #category : #initialization }
ECOBoard >> initialize [
	
	| c |
	c := ECONullCard new.
	super initialize.
	stoneNumber := 9.
	table := Matrix rows:7 columns: (self stoneNumber) element: c. 
	
]

{ #category : #testing }
ECOBoard >> isStoneEmpty: anInteger [

	| c |
	c := self table atColumn: anInteger.
	^ c allSatisfy: [ :each | each isNull ]
]

{ #category : #accessing }
ECOBoard >> stoneNumber [
	^ stoneNumber
]

{ #category : #accessing }
ECOBoard >> stoneNumber: anInteger [
	
	stoneNumber := anInteger
]

{ #category : #accessing }
ECOBoard >> table [
	^ table
]
