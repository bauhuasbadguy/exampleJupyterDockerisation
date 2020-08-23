## Example Jupyter Dockerisation


### Introduction

In this notebook I am making an example of Docker being used to run a Jupyter notebook. This version comes with a number of python libraries which can be found in requirements.txt. This was created for the openvirus project (https://github.com/petermr/openVirus) therefore all example notebooks are included in order to help with that project.

### Instructions

In order to use this repo clone it as normal and run `run_notebook.sh`. Wait a few minutes for the tool to start and copy the 127.0.0.1 address in full into your browser to start using the notebook.

In this example file I have included example scholarly.html files for two papers. These were produced using the ami tool.

I have also included two notebooks. One of which contains the functions for reading a scholarly.html object and the other shows an example usage. The files are:

* `Example importing scholarly html processing functions.ipynb`
* `scholarly_html_functions.ipynb`


### Paper object description

`paper_obj`:- This is an object designed to be used to read the papers into python. It has the following attributes:

* title - the title of the paper. This is a string.
* meta - a dictionary containing the paper's metadata.
* authors - a list of the authors of the paper. This is a list of dictionary objects.
* abstract_text - the text from the abstract. This is a string.
* body_text - the text from the body of the article. This is a string.
* figures - the figure captions. This is a list of dictionary objects.
* body - The body of the document. This is stored as a dictionary where the keys are the segment headings.
* acknowledgements - The acknowledgements of the paper. This is a dictionary object
* references - The references of the paper. This is a list of dictionaries.

In order to load a html into a `paper_obj` initiate the object using the filename. For example

```
from ipynb.fs.full.scholarly_html_functions import paper_obj


#set the filename
filename = './results/PMC2241601/scholarly.html'

#create the paper object
paper = paper_obj(filename)

print(paper.abstract_text)
```

This was tested on Ubuntu so further work may be needed to make the tool easy to use by windows users.

### Contact

If you find a problem you can contact me via the openvirus slack channel or else create a issue here on github.