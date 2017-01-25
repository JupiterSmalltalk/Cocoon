versions
version120: spec
	<version: '1.20' imports: #('0.4-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #stable.
			spec description: 'version 1.20'.
			spec author: 'CyrilFerlicot'.
			spec timestamp: '6/29/2015 15:38'.
			spec
				project: 'Ston' with: '0.14';
				project: 'Magritte3' with: '3.3.2'.
			spec
				package: 'Cocoon-Core' with: 'Cocoon-Core-CyrilFerlicot.32';
				package: #'Cocoon-Tests-Core' with: 'Cocoon-Tests-Core-CyrilFerlicot.28' ]