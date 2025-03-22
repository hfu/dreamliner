# dreamliner
One-liner OpenStreetMap extraction

This was an experiment to write a UNIX one-liner to extract thematic geospatial data from an OpenStreetMap extract, using osmium.

In reality, the experiment was to write a proper Makefile to generate the output, because osmium does not always take STDIN for several reasons.

## Usage
```sh
git clone git@github.com:hfu/dreamliner
cd dreamliner
make all
# make clean to delete all artifacts. 
```

## Tools used
### Geospatial
- osmium
- tippecanoe

### General purpose
- make
- curl
