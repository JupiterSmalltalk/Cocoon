[[[language=smalltalk
ConfigurationOfCocoon loadBleedingEdge
]]]

(This documentation is automatically generated from `ConfigurationOfCocoon`'s class comment. Please update it there.)

An application configuration system using JSON.

!! Using Cocoon

To use Cocoon in your application, you first have to describe how your application can be configured. This is done in a dedicated subclass of ==CCConfiguration==: e.g., with a new ==MyAppCocoonConfiguration== class.

In your ==MyAppCocoonConfiguration== class you'll need to define the configuration properties accepted by the application. For example if the application lets the user specify input files you can create this method:

[[[language=smalltalk
MyAppCocoonConfiguration>>inputFiles
	<cocoonParameter: 'List the files that I need to use.'>

	^ self propertyAt: 'inputFiles' default: [ self defaultInputFiles ]

MyAppCocoonConfiguration>>defaultInputFiles
	<cocoonDefaultParameter:'None'>
	
	^ Array new
]]]

One design principle of Cocoon is that the Cocoon configuration class manipulates real objects, not strings. For example, ==inputFiles== is likely to be a collection of file references (instances of ==FileReference==). To interpret what will be specified in the user's configuration file, you have to create an interpreter. This is done by subclassing ==CCSTONConfigurationInterpreter==: e.g., with a new ==MyAppSTONConfigurationInterpreter== class. Override both ==#configuration== and ==#initializeInterpretationBlocks==.

!!Generating Documentation

Cocoon contains a system that allows you to generate a pillar documentation of your parameters in your configuration: CCDocumentationGenerator !

To use it it's simple. 
On a property's method add this pragma: 

[[[
	<cocoonParameter: 'The documentation of my property'>
]]]

The default value's property need to be named like this: if your property is 'author' so the default value's method will be named 'defaultAuthor'.
Inside the default method add this pragma: 

[[[
	<cocoonDefaultParameter: 'The description of the default value.'>
]]]

If the default value is a litteral you can also write 

[[[
	<cocoonDefaultParameter: ''>
]]]

This will print the litteral value.

Now you can generate your documentation like this.

Create a stream and use this simple command:

[[[
	stream := String new writeStream.
	CCDocumentationGeneration of: myClassWhoExtendsCCConfiguration on: stream.
]]]


________________________________________________

@@note A part of the properties has been copied from PRBasicObject.

@@note You can see an example of use in the Pillar Exporter's configuration. ( PRCocoonConfiguration and PRCocoonConfigurationInterpreter )

