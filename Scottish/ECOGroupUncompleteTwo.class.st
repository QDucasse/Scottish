"
I represent an uncomplete card group. My strength is 0

I'm composed two ECOCard.

I collaborate with ECOStone, ECOCard and ECOBoard.
"
Class {
	#name : #ECOGroupUncompleteTwo,
	#superclass : #ECOGroup,
	#category : #Scottish
}

{ #category : #example }
ECOGroupUncompleteTwo class >> uncompleteA1B2 [
	<sampleInstance>
	
	| g c1 c2 |
	c1 := ECOCard new.
	c1 value: 1.
	c1 color: 'A'.
	c2 := ECOCard new.
	c2 value: 2.
	c2 color: 'B'.
	g := ECOGroupEmpty new.	
	^ (g with: c1) with: c2.
	

]

{ #category : #accessing }
ECOGroupUncompleteTwo >> initialize [

	super initialize.
	cards add: ECONullCard new
]

{ #category : #adding }
ECOGroupUncompleteTwo >> isUncomplete [

	^ true
]

{ #category : #accessing }
ECOGroupUncompleteTwo >> strength [
	^ 0
	
]

{ #category : #adding }
ECOGroupUncompleteTwo >> with: anECOCard [
	
	| s sameColor sameValue isSequence |
	cards add: anECOCard.
	s := cards sorted: [ :a :b | a value < b value ].
	sameColor := s allSatisfy:  [ :each | each color = cards first color ].
	sameValue := s allSatisfy: [ :each | each value = cards first value ].
	isSequence := s first value = (s last value -2) and: [s asSet size = 3].
	
	isSequence & sameColor ifTrue: [ 
		| g |
		g := ECOGroupFlush new.
		g cards: cards.
		^g ].
	
	sameValue ifTrue: [ 
		| g |
		g := ECOGroupThreeOfAKind  new.
		g cards: cards.
		^g ].
	
	sameColor ifTrue: [ 
		| g |
		g := ECOGroupSameColor new.
		g cards: cards.
		^g ].
	
	isSequence ifTrue: [ 
		| g |
		g := ECOGroupStraight new.
		g cards: cards.
		^g ].
	
	^ ECOGroupComplete new cards: cards

]
