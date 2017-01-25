versions
version117: spec
	<version: '1.17' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.17 - configuration compatible with GemStone'.
		spec author: 'CyrilFerlicot'.
		spec timestamp: '06/07/2015 02:57'.
		spec project: 'Ston' with: '0.14'.
		spec 
			package: 'Cocoon-Core' with: 'Cocoon-Core-CyrilFerlicot.17';
			package: #'Cocoon-Tests-Core' with: 'Cocoon-Tests-Core-CyrilFerlicot.17'. ].