versions
version127: spec
	<version: '1.27' imports: #('0.4-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.27'.
		spec author: 'CyrilFerlicot'.
		spec timestamp: '8/19/2015 23:41'.
		spec 
			project: 'Ston' with: '0.14';
			project: 'Magritte3' with: '3.4.2'.
		spec 
			package: 'Cocoon-Core' with: 'Cocoon-Core-CyrilFerlicot.48';
			package: #'Cocoon-Tests-Core' with: 'Cocoon-Tests-Core-CyrilFerlicot.30'. ].