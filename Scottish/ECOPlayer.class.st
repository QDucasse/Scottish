Class {
	#name : #ECOPlayer,
	#superclass : #Object,
	#type : #variable,
	#instVars : [
		'taille',
		'no',
		'partie',
		'main'
	],
	#category : #Scottish
}

{ #category : #accessing }
ECOPlayer >> hand [
	^ main
]

{ #category : #accessing }
ECOPlayer >> hand: anArray [
	
	no := anArray 
]

{ #category : #initialization }
ECOPlayer >> initialize [
	
	| c a |
	c := ECOCard new.
	self size: 6.
	self no: 1.
	a := Array new: self size withAll: c.
	self hand: a
]

{ #category : #accessing }
ECOPlayer >> no [
	^ no
]

{ #category : #accessing }
ECOPlayer >> no: anInteger [
	
	no := anInteger
]

{ #category : #accessing }
ECOPlayer >> size [
	
	^ taille
]

{ #category : #accessing }
ECOPlayer >> size: anInteger [
	
	taille := anInteger 
]
