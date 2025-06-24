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

{ #category : 'as yet unclassified' }
SBSCDNDeploymentLibrary class >> bsVersion [

	^ '5.3.7'
]

{ #category : 'accessing - defaults' }
SBSCDNDeploymentLibrary class >> cdnCSSLocation [

	^'https://cdn.jsdelivr.net/npm/bootstrap@{1}/dist/css/bootstrap.min.css' format: { self bsVersion }
]

{ #category : 'accessing - defaults' }
SBSCDNDeploymentLibrary class >> cdnCSSLocationIntegrity [
	"Calculated via https://www.srihash.org"

	^ 'sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr'
]

{ #category : 'accessing - defaults' }
SBSCDNDeploymentLibrary class >> cdnJSLocation [

	^ 'https://cdn.jsdelivr.net/npm/bootstrap@{1}/dist/js/bootstrap.bundle.min.js' format: { self bsVersion }
]

{ #category : 'accessing - defaults' }
SBSCDNDeploymentLibrary class >> cdnJSLocationIntegrity [
	"Calculated via https://www.srihash.org"

	^ 'sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q'
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
