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

{ #category : #acessing }
ECOBoard >> stoneNumber [
	^ stoneNumber
]

{ #category : #acessing }
ECOBoard >> stoneNumber: anInteger [
	
	stoneNumber := anInteger
]

{ #category : #accessing }
ECOBoard >> table [
	^ table
]
