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
TestGroup >> testStrengthOfEmptyGroupIsZero [
	
	self assert: ECOGroupEmpty empty strength equals: 0
]

{ #category : #tests }
TestGroup >> testStrengthOfUncompleteGroupIsZero [
	
	self assert: ECOGroupUncompleteTwo uncompleteA1B2 strength equals: 0 
]
