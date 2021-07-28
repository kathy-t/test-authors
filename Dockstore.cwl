cwlVersion: v1.0
class: Workflow
doc: "This is a description"

dct:creator:
  foaf:name: Test User
  foaf:mbox: mailto:test@dockstore.org

inputs:
  input_file: File
outputs:
  output_file:
    type: File
    outputSource: md5sum/output_file
steps:
  md5sum:
    run: dockstore-tool-md5sum.cwl
    in:
      input_file: input_file
    out: [output_file]