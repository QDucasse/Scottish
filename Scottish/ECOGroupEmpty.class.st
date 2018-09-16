"
I represent an empty Card Group.

I'm composed of zero cards, aka three ECONullCards.

I collaborate with ECOStone, ECOCard and ECOBoard.
"
Class {
	#name : #ECOGroupEmpty,
	#superclass : #ECOGroup,
	#category : #Scottish
}

{ #category : #requirements }
ECOGroupEmpty class >> empty [ 
	<sampleInstance>
	
	^ self new
]

{ #category : #initialization }
ECOGroupEmpty >> initialize [

	super initialize.
	3 timesRepeat: [cards add: ECONullCard new]
]

{ #category : #testing }
ECOGroupEmpty >> isEmpty [
	
	^ true
]

{ #category : #accessing }
ECOGroupEmpty >> strength [
	^ 0
]

{ #category : #adding }
ECOGroupEmpty >> with: anECOCard [ 

	| g |
	g := ECOGroupUncompleteOne new.
	g add: anECOCard.
	^ g
	
]
