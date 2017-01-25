I am a class managing configuration used  by an application.
In fact I managed a set of properties. 
I am implementing a composite pattern since a configuration can contain other sub-configurations.
Information not found in a configuration is looked up in its parent (and it's done recursively).

I have a Dictionnary call 'properties' which contains the properties of the configuration. 
On CCConfiguration I contains the 'baseDirectory' where to search the config and a collection of configurations call 'configurations'. 

I stock the magritte descriptions to not have to rebuild them all the time.
 
For create a new Configuration you need to extands CCConfiguration. 
In your XXCocoonConfiguration's class you'll need to define new properties with a Magritte Description. 
For example if you need some input files you can create this method : 

descriptionInputFiles
	<magritteDescription>
	^ CCMagritteToManyRelationFileDescription new
		defaultDirectory: self baseDirectory;
		priority: 100;
		accessor: #inputFiles;
		label:
				'Input files to export.';
		cocoonDocumentation: 'List the Pillar files that must be exported (can be a FileReference, a relative path from baseDirectory or an absolute path).';
		classes: {FileReference};
		default: Array new;
		yourself
