"
Actionable badges with hover and focus states.
"
Class {
	#name : 'SBSActionableBadgeTag',
	#superclass : 'SBSAnchorTag',
	#traits : 'SBSTContextualStyled',
	#classTraits : 'SBSTContextualStyled classTrait',
	#category : 'Bootstrap5-Core-Base',
	#package : 'Bootstrap5-Core',
	#tag : 'Base'
}

{ #category : 'defaults' }
SBSActionableBadgeTag >> defaultStyleClass [

	^'badge'
]

{ #category : 'initialization' }
SBSActionableBadgeTag >> initialize [
	super initialize.
	self contextStyle: self defaultStyleClass.
	self modifier: ''
]
