versions
version126: spec
	<version: '1.26' imports: #('0.4-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.26'.
		spec author: 'CyrilFerlicot'.
		spec timestamp: '8/18/2015 16:36'.
		spec 
			project: 'Ston' with: '0.14';
			project: 'Magritte3' with: '3.4.2'.
		spec 
			package: 'Cocoon-Core' with: 'Cocoon-Core-CyrilFerlicot.46';
			package: #'Cocoon-Tests-Core' with: 'Cocoon-Tests-Core-CyrilFerlicot.30'. ].