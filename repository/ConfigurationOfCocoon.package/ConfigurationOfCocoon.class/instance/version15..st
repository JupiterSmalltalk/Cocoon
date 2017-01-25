versions
version15: spec
	<version: '1.5' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.5'.
		spec author: 'CyrilFerlicot'.
		spec timestamp: '4/1/2015 11:14'.
		spec project: 'Ston' with: '0.10'.
		spec 
			package: 'Cocoon-Core' with: 'Cocoon-Core-CyrilFerlicot.6';
			package: #'Cocoon-Tests-Core' with: 'Cocoon-Tests-Core-CyrilFerlicot.4'. ].