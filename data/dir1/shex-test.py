from shexer.shaper import Shaper
from shexer.consts import SHEXC, TURTLE

target_classes = [
    "http://example.org/Person",
    "http://example.org/Gender"
]

namespaces_dict = {'http://www.w3.org/1999/02/22-rdf-syntax-ns#': 'rdf',
                   'http://www.w3.org/2001/XMLSchema#': 'xsd',
                   'http://www.w3.org/2000/01/rdf-schema#': 'rdfs',
                   'http://www.w3.org/2002/07/owl#': 'owl',
                   'http://wikiba.se/ontology#': 'wikibase',
                   'http://www.w3.org/2004/02/skos/core#': 'skos',
                   'http://schema.org/': 'schema',
                   'http://creativecommons.org/ns#': 'cc',
                   'http://www.opengis.net/ont/geosparql#': 'geo',
                   'http://www.w3.org/ns/prov#': 'prov',
                   'http://localhost:8181/entity/': 'wd',
                   'http://localhost:8181/wiki/Special:EntityData/': 'data',
                   'http://localhost:8181/entity/statement/': 's',
                   'http://localhost:8181/reference/': 'ref',
                   'http://localhost:8181/value/': 'v',
                   'http://localhost:8181/prop/direct/': 'wdt',
                   'http://localhost:8181/prop/direct-normalized/': 'wdtn',
                   'http://localhost:8181/prop/': 'p',
                   'http://localhost:8181/prop/statement/': 'ps',
                   'http://localhost:8181/prop/statement/value/': 'psv',
                   'http://localhost:8181/prop/statement/value-normalized/': 'psn',
                   'http://localhost:8181/prop/qualifier/': 'pq',
                   'http://localhost:8181/prop/qualifier/value/': 'pqv',
                   'http://localhost:8181/prop/qualifier/value-normalized/': 'pqn',
                   'http://localhost:8181/prop/reference/': 'pr',
                   'http://localhost:8181/prop/reference/value/': 'prv',
                   'http://localhost:8181/prop/reference/value-normalized/': 'prn',
                   'http://localhost:8181/prop/novalue/': 'wdno',
                   'http://weso.es/shapes/': '',
                   }


input_ttl_file = "ds.ttl"


shaper = Shaper(target_classes=target_classes,
                graph_file_input=input_ttl_file,
                input_format=TURTLE,
                namespaces_dict=namespaces_dict,  # Default: no prefixes
                instantiation_property="http://www.w3.org/1999/02/22-rdf-syntax-ns#type")  # Default rdf:type

output_file = "shaper_ds.shex"

shaper.shex_graph(output_file=output_file,
                  acceptance_threshold=0.1)

print("Done!")
