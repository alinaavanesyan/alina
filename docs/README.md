# Alina's website

[![Build Status](https://travis-ci.org/ic4f/alina.svg?branch=master)](https://travis-ci.org/ic4f/alina)

This is the code for Alina's Jekyll-based website: <a href="http://alinaavanesyan.com">http://alinaavanesyan.com</a>. 

### Notable additions:

(1) This <a href="_plugins/pub_tag.rb">plugin</a> (or custom tag) reads in <a href="_data/publications.yml">an
hierarchical list of publications</a> and displays the list or its subset depending on the provided
argument. For example:
* `{% show_pubs %}` will display the entire list (<a href="http://alinaavanesyan.com/publications/">see this page</a>)  
* `{% show_pubs dissertation_phd %}` will display a subset related to project *dissertation_phd* (<a href="http://alinaavanesyan.com/research/plant-insect-interaction">see bottom of this page</a>)

(2) Modals for most photos are handled by <a href="assets/js/modals.js">this simple jQuery script</a>.

## License
[MIT](LICENSE)
