reflective operations
doesNotUnderstand: aMessage
  "I allow to get or set property of the configuration."

  ^ aMessage arguments size = 1
    ifTrue: [ 
      self magritteDescription children
        detect: [ :each | each accessor writeSelector = aMessage selector ]
        ifFound: [ :description | description validate: aMessage argument ].
      self properties at: aMessage selector allButLast put: aMessage argument ]
    ifFalse: [ 
      [ self propertyAt: aMessage selector ]
        on: PropertyError
        do: [ :ex | self defaultValueOf: aMessage selector ] ]