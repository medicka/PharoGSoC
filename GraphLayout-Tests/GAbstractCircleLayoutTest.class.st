Class {
	#name : #GAbstractCircleLayoutTest,
	#superclass : #TestCase,
	#category : #'GraphLayout-Tests'
}

{ #category : #testing }
GAbstractCircleLayoutTest class >> isAbstract [
	^ self = GAbstractCircleLayoutTest
]

{ #category : #testing }
GAbstractCircleLayoutTest class >> shouldInheritSelectors [
	^ true
]

{ #category : #accessing }
GAbstractCircleLayoutTest >> actualClass [
	^ self subclassResponsibility
]

{ #category : #accessing }
GAbstractCircleLayoutTest >> newInstance [
	^ self actualClass new
]

{ #category : #tests }
GAbstractCircleLayoutTest >> testComputeIncrementalAngleFor [
	"A test that checks if the computation or incremental angle is done properly. 	initialIncrementalAngle in not selected, therefore for set of 4 elements, expected result is 1.57 	radians. We round down to two decilals for easier testing." 
	
	|gr layout|
	gr := Graph new.
	gr addVertexWithValue: 1;
		addVertexWithValue: 2;
		addVertexWithValue: 3;
		addVertexWithValue: 4.
	layout := self newInstance .
	self assert: ((layout computeIncrementalAngleFor: (gr vertices)) roundDownTo: 0.01) equals: 1.57
]

{ #category : #tests }
GAbstractCircleLayoutTest >> testComputeRadiusFor [
	"A test that checks if the computation or radius is done properly. initialRadius in not selected, 	therefore for set of 4 elements with scalingFactor of 11(default one), expected result is 44 	radians." 
	
	|gr layout|
	gr := Graph new.
	gr addVertexWithValue: 1;
		addVertexWithValue: 2;
		addVertexWithValue: 3;
		addVertexWithValue: 4.
	layout :=self newInstance. 
	self assert: (layout computeRadiusFor: (gr vertices)) equals: 44
]

{ #category : #'as yet unclassified' }
GAbstractCircleLayoutTest >> testInitialize [
	"Test that checks if initialization of object type GAbstractCircleLayout is correct. Expected resault 	for initialAngle is 0."
		
	|layout|
	layout := self newInstance. 
	self assert: (layout initialAngle) equals: 0
]