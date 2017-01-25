versions
version130: spec
	<version: '1.30' imports: #('0.4-baseline' )>
	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.30 - Configuration should have a name.'.
		spec author: 'CyrilFerlicot'.
		spec timestamp: '1/24/2016 19:00'.
		spec 
			project: 'Ston' with: #stable;
			project: 'Magritte3' with: #stable.
		spec 
			package: 'Cocoon-Core' with: 'Cocoon-Core-CyrilFerlicot.54';
			package: #'Cocoon-Tests-Core' with: 'Cocoon-Tests-Core-CyrilFerlicot.36'. ].