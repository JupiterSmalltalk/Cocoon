versions
version118: spec
	<version: '1.18' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.18 - properties are looked up in parent configurations'.
		spec author: 'GuillermoPolito'.
		spec timestamp: '2015-06-08T14:38:28.791798+02:00'.
		spec project: 'Ston' with: '0.14'.
		spec 
			package: 'Cocoon-Core' with: 'Cocoon-Core-GuillermoPolito.18';
			package: #'Cocoon-Tests-Core' with: 'Cocoon-Tests-Core-CyrilFerlicot.17'. ].