Class {
	#name : #TestBoard,
	#superclass : #TestCase,
	#category : #Scottish
}

{ #category : #tests }
TestBoard >> testInitialize [

	| b |
	b := ECOBoard new.
	self assert: (b stoneNumber) equals: 9.
	1 to: (b stoneNumber) do:  [:i | self assert: (b isStoneEmpty:i) ]
]
