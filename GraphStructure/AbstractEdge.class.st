"
I represent an abstract class, that implements some ˝must have˝ methods and alows creation of a Wrapper.
"
Class {
	#name : #AbstractEdge,
	#superclass : #Object,
	#traits : 'TEdgeTrait',
	#classTraits : 'TEdgeTrait classTrait',
	#instVars : [
		'from',
		'to'
	],
	#category : #GraphStructure
}

{ #category : #getter }
AbstractEdge >> fromVertex [
	^from
]

{ #category : #setter }
AbstractEdge >> fromVertex: vertex [
	from := vertex
]

{ #category : #getter }
AbstractEdge >> toVertex [
	^to
]

{ #category : #setter }
AbstractEdge >> toVertex: vertex [
	to := vertex
]
