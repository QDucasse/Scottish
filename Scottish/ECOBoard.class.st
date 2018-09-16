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
		'sides'
	],
	#category : #Scottish
}

{ #category : #initialization }
ECOBoard >> initialize [
	
	super initialize.
	stoneNumber := 9.
	sides := Dictionary new.
	self initializeSide: #Player1.
	self initializeSide: #Player2
]

{ #category : #initialization }
ECOBoard >> initializeSide: aSymbol [
	
	sides at: aSymbol put: (Array new: stoneNumber withAll: ECOGroupEmpty new)
	
]

{ #category : #accessing }
ECOBoard >> sideForPlayer: aSymbol [

	^ sides at: aSymbol
]

{ #category : #accessing }
ECOBoard >> stoneNumber [
	^ stoneNumber
]

{ #category : #accessing }
ECOBoard >> stoneNumber: anInteger [
	
	stoneNumber := anInteger
]
