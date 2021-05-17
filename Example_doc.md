<!-- remove all comments before releasing -->
<!-- This is the name of the module as it will appear in GenePatter, and its version, for clarity -->
# ExampleModule (v2)

<!-- A brief text description of the module, usually one sentence in length. -->
**Description**: This is an example GenePattern module written in Python 3. It can be used as a template for future modules. It reads a file and potentially adds a line of text

<!-- This field is for the author or creator of the module. If the algorithm of the module is from a published paper, this is usually the first or corresponding author from the paper. If the module algorithm is unpublished, this is usually the developer of the module itself. This field can simply be a name of a person or group. -->
**Authors**: Edwin F. Juarez;UCSD - Mesirov Lab, UCSD; Barbara Hill - Mesirov Lab, Broad Institute

<!--This field is used for responding to help requests for the module, and should be an email address or a link to a website with contact information or a help forum. -->
**Contact**: [Forum Link](https://groups.google.com/forum/?utm_medium=email&utm_source=footer#!forum/genepattern-help)

<!-- All modules have a version number associated with them (the last number on the LSID) that is used to differentiate between modules of the same name for reproducibility purposes. However, for publicly released software packages that are wrapped as GenePattern modules, sometimes this version number will be different that the version number of the algorithm itself (e.g. TopHat v7 in GenePattern uses version 2.0.8b of the TopHat algorithm). Since this information is often important to the user, the algorithm version field is an optional attribute that can be used to specify this different version number. Remove this field if not applicable -->
**Algorithm Version**: OPTIONAL

<!-- Why use this module? What does it do? If this is one of a set of modules, how does this module fit in the set? How does it work? write overview as if you are explaining to a novice. Include any links or images which would serve to clarify -->
## Summary

This is an example GenePattern module written in [Python 3](https://www.python.org/download/releases/3.0/).
It can be used as a template for future modules. It reads a file and potentially adds a line of text.

<!-- appropriate papers should be cited here -->
## References

<!-- links to your source repository **specific to the release version**, the Docker image used by the module (as specified in your manifest), and (if applicable) the sha link to the Dockerfile used to build your Docker image -->
## Source Links
* [The GenePattern ExampleModule v2 source repository](https://github.com/genepattern/ExampleModule/tree/v1)
* ExampleModule v2 uses the [genepattern/docker-python36:0.4 Docker image](https://hub.docker.com/layers/25223888/genepattern/docker-python36/0.4/images/sha256-c251b34fc4e862535a246f9d74d71a385549b0545f9989d289f160e543b54ca5?context=explore)
* [The Dockerfile used to build that image is here.](https://github.com/genepattern/docker-python36/blob/0.5/Dockerfile)

## Parameters
<!-- short description of the module parameters and their default values, as well as whether they are required -->

| Name | Description <!--short description--> | Default Value |
---------|--------------|----------------
| filename * |  The file to be read in txt format |
| add_custom_message * | Whether or not to add a custom message. | False |
| message_to_add  | What message to add (if any) |
| output_filename * | The basename to use for output file (no need to add ".txt" at the end) |

\*  required

## Input Files
<!-- longer descriptions of the module input files. Include information about format and/or preprocessing...etc -->

1. filename  
    A long form explanation of the parameter. For example: This is the file which will be read in by the python script and to which text will be added, if add_custom_message is set to true. The Parameter expects a plain .txt file with that extension.
    
## Output Files
<!-- list and describe any files output by the module -->

1. <output_filename>.txt  
    The input file plus any text you added, if you chose to add text.
2. stdout.txt
    This is standard output from the Python script. Sometimes helpful for debugging.

## Example Data

Input:  
[GSE162557_RAW.tar](https://github.com/genepattern/AffySTExpressionFileCreator/blob/main/gpunit/input/GSE162557_RAW.tar) - ([full set from GEO - GSE162557](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE162557))  
[Clariom_GSE162557.clm](https://github.com/genepattern/AffySTExpressionFileCreator/blob/main/gpunit/output/GSE162557_Clariom.expression.gct.cls)

Output:  
[GSE162557_Clariom.expression.gct](https://github.com/genepattern/AffySTExpressionFileCreator/blob/main/gpunit/output/GSE162557_Clariom.expression.gct)  
[GSE162557_Clariom.expression.gct.cls](https://github.com/genepattern/AffySTExpressionFileCreator/blob/main/gpunit/output/GSE162557_Clariom.expression.gct.cls)


## Requirements

Requires the genepattern/affy-st-expression-file-creator:1 Docker image.

## License

`AffySTExpressionFileCreator` is distributed under a modified BSD license available at https://github.com/genepattern/AffySTExpressionFileCreator/blob/v2/LICENSE.txt.

## Version Comments

| Version | Release Date | Description                                 |
----------|--------------|---------------------------------------------|
|  2  | Apr. 16th, 2021 | Updated to use the genepattern/affy-st-expression-file-creator:1 Docker image. |
| 1.3 | Jan. 29, 2021 | Updated to accept Clariom arrays and to use the R 4.0.3 jupyter/datascience-notebook:r-4.0.3 Docker image. |
| 0.14 | Oct. 22, 2015 | Updated to make use of the R package installer. |
