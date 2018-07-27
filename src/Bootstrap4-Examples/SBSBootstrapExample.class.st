"
A common superclass for the bootstrap examples
"
Class {
	#name : #SBSBootstrapExample,
	#superclass : #WAComponent,
	#category : 'Bootstrap4-Examples-Examples'
}

{ #category : #accessing }
SBSBootstrapExample class >> exampleName [

	^self name greaseString 
]

{ #category : #testing }
SBSBootstrapExample class >> isAbstract [

	^self name = #SBSBootstrapExample 
]

{ #category : #rendering }
SBSBootstrapExample >> renderContentOn: html [

	html heading: self class exampleName; horizontalRule.
	self renderExampleOn: html
]

{ #category : #rendering }
SBSBootstrapExample >> renderExampleOn: html [

	
]