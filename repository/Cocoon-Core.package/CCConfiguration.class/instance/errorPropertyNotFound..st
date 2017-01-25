private
errorPropertyNotFound: aSelector
	"Error on a property"
	
	PropertyError signal: 'Property ' , aSelector , ' not found.'