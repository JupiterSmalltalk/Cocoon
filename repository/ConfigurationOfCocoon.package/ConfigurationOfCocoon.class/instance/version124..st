versions
version124: spec
	<version: '1.24' imports: #('0.4-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.24'.
		spec author: 'CyrilFerlicot'.
		spec timestamp: '7/31/2015 15:38'.
		spec 
			project: 'Ston' with: '0.14';
			project: 'Magritte3' with: '3.3.2'.
		spec 
			package: 'Cocoon-Core' with: 'Cocoon-Core-CyrilFerlicot.39';
			package: #'Cocoon-Tests-Core' with: 'Cocoon-Tests-Core-CyrilFerlicot.28'. ].