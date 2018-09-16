"
I represent a Card Group.

I'm composed of three ECOCard

I collaborate with ECOStone, ECOCard and ECOBoard.
"
Class {
	#name : #ECOGroup,
	#superclass : #Object,
	#instVars : [
		'cards',
		'pointsTotal',
		'strength'
	],
	#category : #Scottish
}

{ #category : #adding }
ECOGroup >> add: anECOCard [
 	"Primitive operation ! Does not transform any card group (see with)"
	
	cards add: anECOCard 
]

{ #category : #accessing }
ECOGroup >> cards [
	^ cards
]

{ #category : #initialization }
ECOGroup >> initialize [

	cards := OrderedCollection new.
]

{ #category : #testing }
ECOGroup >> isUncomplete [
	^ false
]
