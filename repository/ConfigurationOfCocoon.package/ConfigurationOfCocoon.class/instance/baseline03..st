baselines
baseline03: spec
	<version: '0.3-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/PharoExtras/Cocoon/main/'.
		spec project: 'Ston' with: [
				spec
					className: #ConfigurationOfSton;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/STON/main/' ].
		spec 
			package: 'Cocoon-Core' with: [
				spec requires: #('Ston' ). ];
			package: #'Cocoon-Tests-Core'. ].