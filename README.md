# dreamliner
One-liner OpenStreetMap extraction

I've built a straightforward Makefile that helps you create PMTiles from a OpenStreetMap PBF file. It's a simple way to get the data you need. 

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
