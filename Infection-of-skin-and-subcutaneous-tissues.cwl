cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  infection-of-skin-and-subcutaneous-tissues---secondary:
    run: infection-of-skin-and-subcutaneous-tissues---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  infection-of-skin-and-subcutaneous-tissues-lesion---secondary:
    run: infection-of-skin-and-subcutaneous-tissues-lesion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: infection-of-skin-and-subcutaneous-tissues---secondary/output
  infection-of-skin-and-subcutaneous-tissues-cellulitis---secondary:
    run: infection-of-skin-and-subcutaneous-tissues-cellulitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: infection-of-skin-and-subcutaneous-tissues-lesion---secondary/output
  infection-of-skin-and-subcutaneous-tissues-dermatitis---secondary:
    run: infection-of-skin-and-subcutaneous-tissues-dermatitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: infection-of-skin-and-subcutaneous-tissues-cellulitis---secondary/output
  other-infection-of-skin-and-subcutaneous-tissues---secondary:
    run: other-infection-of-skin-and-subcutaneous-tissues---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: infection-of-skin-and-subcutaneous-tissues-dermatitis---secondary/output
  viral-infection-of-skin-and-subcutaneous-tissues---secondary:
    run: viral-infection-of-skin-and-subcutaneous-tissues---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: other-infection-of-skin-and-subcutaneous-tissues---secondary/output
  infection-of-skin-and-subcutaneous-tissues-erysipelas---secondary:
    run: infection-of-skin-and-subcutaneous-tissues-erysipelas---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: viral-infection-of-skin-and-subcutaneous-tissues---secondary/output
  infection-of-skin-and-subcutaneous-tissues-abscess---secondary:
    run: infection-of-skin-and-subcutaneous-tissues-abscess---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: infection-of-skin-and-subcutaneous-tissues-erysipelas---secondary/output
  infection-of-skin-and-subcutaneous-tissues-scabies---secondary:
    run: infection-of-skin-and-subcutaneous-tissues-scabies---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: infection-of-skin-and-subcutaneous-tissues-abscess---secondary/output
  infection-of-skin-and-subcutaneous-tissues-myiasis---secondary:
    run: infection-of-skin-and-subcutaneous-tissues-myiasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: infection-of-skin-and-subcutaneous-tissues-scabies---secondary/output
  infection-of-skin-and-subcutaneous-tissues-impetigo---secondary:
    run: infection-of-skin-and-subcutaneous-tissues-impetigo---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: infection-of-skin-and-subcutaneous-tissues-myiasis---secondary/output
  infection-of-skin-and-subcutaneous-tissues-membrane---secondary:
    run: infection-of-skin-and-subcutaneous-tissues-membrane---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: infection-of-skin-and-subcutaneous-tissues-impetigo---secondary/output
  infection-of-skin-and-subcutaneous-tissues-dermatophytosis---secondary:
    run: infection-of-skin-and-subcutaneous-tissues-dermatophytosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: infection-of-skin-and-subcutaneous-tissues-membrane---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: infection-of-skin-and-subcutaneous-tissues-dermatophytosis---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
