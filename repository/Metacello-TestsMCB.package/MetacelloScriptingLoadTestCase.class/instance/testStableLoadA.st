tests
testStableLoadA
  | projectSpec |
  Metacello new
    configuration: 'ExternalX';
    version: #'stable';
    repository: 'dictionary://Metacello_Config_Test_Repository';
    load.
  projectSpec := (Metacello registry
    configuration: 'ExternalX';
    list) first.
  self assert: projectSpec versionString = '0.9.0'