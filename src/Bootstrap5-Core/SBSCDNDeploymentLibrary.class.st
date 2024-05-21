"
Content delivery network (CDN) based deployment library
"
Class {
	#name : 'SBSCDNDeploymentLibrary',
	#superclass : 'SBSFileLibrary',
	#category : 'Bootstrap5-Core-Libraries',
	#package : 'Bootstrap5-Core',
	#tag : 'Libraries'
}

{ #category : 'updating' }
SBSCDNDeploymentLibrary class >> addLoadScriptTo: html [

	html script
			url: self cdnJSLocation;
			attributeAt: 'integrity' put: self cdnJSLocationIntegrity;
			attributeAt: 'crossorigin' put: 'anonymous'
]

{ #category : 'accessing - defaults' }
SBSCDNDeploymentLibrary class >> cdnCSSLocation [

	^'https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css'
]

{ #category : 'accessing - defaults' }
SBSCDNDeploymentLibrary class >> cdnCSSLocationIntegrity [
	"Calculated via https://www.srihash.org"

	^ 'sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH'
]

{ #category : 'accessing - defaults' }
SBSCDNDeploymentLibrary class >> cdnJSLocation [

	^ 'https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js'
]

{ #category : 'accessing - defaults' }
SBSCDNDeploymentLibrary class >> cdnJSLocationIntegrity [
	"Calculated via https://www.srihash.org"

	^ 'sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz'
]

{ #category : 'updating' }
SBSCDNDeploymentLibrary >> updateRoot: anHTMLRoot [
	"We only add the CSS - the JS part should go at the end of rendering as load script, see #addLoadScriptTo: on class side"
	| style |
	super updateRoot: anHTMLRoot.
	style := anHTMLRoot stylesheet.
	style url: self class cdnCSSLocation.
	style attributes
		at: 'integrity' append: self class cdnCSSLocationIntegrity;
		at: 'crossorigin' append: 'anonymous'
]
