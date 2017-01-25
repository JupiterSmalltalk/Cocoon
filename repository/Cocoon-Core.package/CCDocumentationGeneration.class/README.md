I generate a documentation of the parameters of a CCConfiguration.

To use it it's simple. 
On a property's method add this pragma: 

	<cocoonParameter: 'The documentation of my property'>

The default value's property need to be named like this: if your property is 'author' so the default value's method will be named 'defaultAuthor'.
Inside the default method add this pragma: 

	<cocoonDefaultParameter: 'The description of the default value.'>

If the default value is a litteral you can also write 

	<cocoonDefaultParameter: ''>

This will print the litteral value.

Now you can generate your documentation like this.

Create a stream and use this simple command:

	stream := String new writeStream.
	CCDocumentationGeneration of: myClassWhoExtendsCCConfiguration on: stream.
