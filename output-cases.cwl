$namespaces:
  s: http://phenomics.kcl.ac.uk/phenoflow/
baseCommand: python
class: CommandLineTool
cwlVersion: v1.0
doc: Output cases
inputs:
- doc: Python implementation unit
  id: inputModule
  inputBinding:
    position: 1
  type: File
- doc: Potential cases of Angiodysplasia-of-colon
  id: potentialCases
  inputBinding:
    position: 2
  type: File
outputs:
- doc: Output containing patients flagged as having this type of Angiodysplasia-of-colon
  id: output
  outputBinding:
    glob: '*.csv'
  type: File
requirements:
  DockerRequirement:
    dockerPull: kclhi/python:latest
s:type: output
