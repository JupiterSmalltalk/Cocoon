versions
version119: spec
	<version: '1.19' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.19 - allProperties gets all properties flattened'.
		spec author: 'GuillermoPolito'.
		spec timestamp: '2015-06-08T16:14:14.337825+02:00'.
		spec project: 'Ston' with: '0.14'.
		spec 
			package: 'Cocoon-Core' with: 'Cocoon-Core-GuillermoPolito.19';
			package: #'Cocoon-Tests-Core' with: 'Cocoon-Tests-Core-CyrilFerlicot.17'. ].