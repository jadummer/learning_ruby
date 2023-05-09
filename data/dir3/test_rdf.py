#!/usr/bin/env python

import re
import urllib.request

from sys import argv
from xml.etree import ElementTree as etree

RDF_NS = '{http://www.w3.org/1999/02/22-rdf-syntax-ns#}'
SKOS_NS = '{http://www.w3.org/2004/02/skos/core#}'
SCHEME_XPATH = './/skos:inScheme'
LABEL_XPATH = './/skos:prefLabel'
RSRC_ATTRIB = '{0}resource'.format(RDF_NS)

NS = {
    'rdf': 'http://www.w3.org/1999/02/22-rdf-syntax-ns#',
    'skos': 'http://www.w3.org/2004/02/skos/core#',
}

def facet_term(xml) -> tuple:
    scheme = ''
    for x in xml.findall(SCHEME_XPATH, NS):
        attr = x.attrib[RSRC_ATTRIB]
        if re.search('facet', attr):
            scheme = attr
            break
    term = xml.find(LABEL_XPATH, NS).text
    return [scheme, term]

def get_schemes(url) -> list:
    req = urllib.request.Request(url)
    try:
        with urllib.request.urlopen(req) as response:
           the_page = response.read()
    except Exception as ex:
        print(f'Error reading url {url}: {ex}')
        raise ex

    xml = etree.fromstring(the_page)
    # for x in xml.findall('.//skos:inScheme', NS):
    #     print(x.attrib)
    # return [x.attrib['{0}resource'.format(RDF_NS)] for x in xml.findall('.//skos:inScheme', NS)]
    return facet_term(xml)


# <dct:identifier>12345</dct:identifier>
# <skos:inScheme rdf:resource="ontology/1.0/#fast"/>
# <rdf:type rdf:resource="http://schema.org/Person"/>
# <skos:inScheme rdf:resource="ontology/1.0/#facet-Personal"/>
# <skos:prefLabel>Chaplin, Patrice</skos:prefLabel>


# schemes = set()

for line in open(argv[1], 'r').readlines():
    url = line.strip()
    if 'fast' not in url:
        continue
    [scheme, term] = get_schemes(url)
    print(f'{url}|{scheme}|{term}')
        # schemes.add(scheme)

# print(schemes)
