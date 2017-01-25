baseline
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec blessing: #'baseline'.
      spec repository: 'http://smalltalkhub.com/mc/PharoExtras/Cocoon/main/'.
      spec
        project: 'Ston'
          with: [ 
              spec
                className: #'ConfigurationOfSton';
                versionString: #'stable';
                repository:
                    'http://smalltalkhub.com/mc/SvenVanCaekenberghe/STON/main/' ];
        project: 'Magritte3'
          with: [ 
              spec
                className: #'ConfigurationOfMagritte3';
                versionString: #'stable';
                repository:
                    'http://smalltalkhub.com/mc/Magritte/Magritte3/main/' ].
      spec
        package: 'Cocoon-Core' with: [ spec requires: #('Ston' 'Magritte3') ];
        package: 'Cocoon-Tests-Core' with: [ spec requires: #('Cocoon-Core') ] ]