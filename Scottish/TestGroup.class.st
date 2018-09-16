Class {
	#name : #TestGroup,
	#superclass : #TestCase,
	#category : #Scottish
}

{ #category : #tests }
TestGroup >> testAddInEmptyMakesUncomplete [
	
	self assert: (ECOGroupEmpty empty with: ECOCard new) isUncomplete 
]

{ #category : #tests }
TestGroup >> testAddInEmptyMakesUncompleteWithRightCard [
	
	| c |
	c := ECOCard A1.
	self assert: ((ECOGroupEmpty empty with: c) cards includes: c)
]

{ #category : #tests }
TestGroup >> testEmptyGroupInitialize [

	| g |
	g := ECOGroupEmpty new.
	self assert: (g cards allSatisfy: [ :c | c isNull ])
]

{ #category : #tests }
TestGroup >> testIsGroupComplete [
	"no interesting relation etween the cards => strength 1"
		
	| g c1 c2 c3 |
	c1 := ECOCard A1.
	c2 := ECOCard new.
	c2 value: 4.
	c2 color: 'B'.
	c3 := ECOCard new.
	c3 value: 6.
	c3 color: 'C'.
	g := ECOGroupUncompleteTwo new.
	g cards: { c1 . c2 } asOrderedCollection.
	g := g with: c3.
	self assert: g strength equals: 1
]

{ #category : #tests }
TestGroup >> testIsGroupFlush [
	"sequential values, same color => strength 5"
		
	| g c1 c2 c3 |
	c1 := ECOCard A1.
	c2 := ECOCard new.
	c2 value: 2.
	c2 color: 'A'.
	c3 := ECOCard new.
	c3 value: 3.
	c3 color: 'A'.
	g := ECOGroupUncompleteTwo new.
	g cards: { c1 . c2 } asOrderedCollection.
	g := g with: c3.
	self assert: g strength equals: 5 
]

{ #category : #tests }
TestGroup >> testIsGroupSameColor [
	"same color => strength 3"
		
	| g c1 c2 c3 |
	c1 := ECOCard A1.
	c2 := ECOCard new.
	c2 value: 3.
	c2 color: 'A'.
	c3 := ECOCard new.
	c3 value: 4.
	c3 color: 'A'. 
	g := ECOGroupUncompleteTwo new.
	g cards: { c1 . c2 } asOrderedCollection.
	g := g with: c3.
	self assert: g strength equals: 3
]

{ #category : #tests }
TestGroup >> testIsGroupStraight [
	"sequential values, different colors (at least 2) => strength 2"
		
	| g c1 c2 c3 |
	c1 := ECOCard A1.
	c2 := ECOCard new.
	c2 value: 2.
	c2 color: 'B'.
	c3 := ECOCard new.
	c3 value: 3.
	c3 color: 'C'.
	g := ECOGroupUncompleteTwo new.
	g cards: { c1 . c2 } asOrderedCollection.
	g := g with: c3.
	self assert: g strength equals: 2
]

{ #category : #tests }
TestGroup >> testIsGroupThreeOfAKind [
	"same values => strength 4"
		
	| g c1 c2 c3 |
	c1 := ECOCard A1.
	c2 := ECOCard new.
	c2 value: 1.
	c2 color: 'B'.
	c3 := ECOCard new.
	c3 value: 1.
	c3 color: 'C'.
	g := ECOGroupUncompleteTwo new.
	g cards: { c1 . c2 } asOrderedCollection.
	g := g with: c3.
	self assert: g strength equals: 4 
]

{ #category : #tests }
TestGroup >> testStrengthOfEmptyGroupIsZero [
	
	self assert: ECOGroupEmpty empty strength equals: 0
]

{ #category : #tests }
TestGroup >> testStrengthOfUncompleteGroupIsZero [
	
	self assert: ECOGroupUncompleteTwo uncompleteA1B2 strength equals: 0 
]

{ #category : #tests }
TestGroup >> testUncompleteOneGroupInitialize [

	| g cards |
	g := ECOGroupUncompleteOne uncompleteA1.
	cards := g cards sorted: [ :a :b | a value < b value ].
	self assert: cards first isNull.
	self assert: cards second isNull.
	self assert: cards last isNull not
	
]

{ #category : #tests }
TestGroup >> testUncompleteTwoGroupInitialize [

	| g |
	g := ECOGroupEmpty new.
	self assert: (g cards allSatisfy: [ :c | c isNull ])
]

{ #category : #tests }
TestGroup >> testUncompleteTwoWithCards [
	"same color => strength 3"
		
	| g c1 c2 c3 |
	c1 := ECOCard A1.
	c2 := ECOCard new.
	c2 value: 3.
	c2 color: 'A'.
	c3 := ECOCard new.
	c3 value: 4.
	c3 color: 'A'.
	g := ECOGroupUncompleteTwo new.
	g cards: { c1 . c2 . c3}.
	self assert: g cards size equals: 3.
	self assert: (g cards includes: c1).
	self assert: (g cards includes: c2).
	self assert: (g cards includes: c3).
]
