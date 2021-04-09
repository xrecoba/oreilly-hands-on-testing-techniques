# To run pict from Docker with function "alias"
pict pict-car-rental-simplified.model 

# To run pict from Docker (no alias)
docker run -ti -v `pwd`:`pwd` -w `pwd` --rm nomadcanuck/pict pict car-rental-simplified.model

# To see statistics
docker run -ti -v `pwd`:`pwd` -w `pwd` --rm nomadcanuck/pict pict car-rental-orthogonal.model /s