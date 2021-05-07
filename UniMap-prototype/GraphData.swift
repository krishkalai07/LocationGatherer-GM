//
//  GraphData.swift
//  UniMap-prototype
//
//  Created by Krish Kalai on 2/10/21.
//

import UIKit
import GameplayKit

import FirebaseCore
import FirebaseFirestore
import FirebaseFirestoreSwift

let temp_graph_data = [
    "UWB" : [
        "UW1" : [
            "Front Door" : [
                "relative_coords_x" : 1135,
                "relative_coords_y" : 656,
                "geographic_coords" : GeoPoint(
                    latitude: 0.0,
                    longitude: 0.0
                ),
                "description" : "Westside Exit",
                "connection_keys" : [
                "100A-S",
                "100A-N",
                "Welcome Desk"
                ]
            ],
            "Welcome Desk" : [
                "relative_coords_x" : 1105,
                "relative_coords_y" : 475,
                "geographic_coords" : GeoPoint(
                latitude: 0.0,
                longitude: 0.0
                ),
                "description" : "",
                "connection_keys" : [
                "100A-S",
                "100A-N",
                    "Front Door",
                ]
            ],
            "100A-S" : [
                "relative_coords_x" : 1059,
                "relative_coords_y" : 503,
                "geographic_coords" : GeoPoint(
                latitude: 0.0,
                longitude: 0.0
                ),
                "description" :"junction to left hallway" ,
                "connection_keys" : [
                    "Front Door",
                    "lh1",
                    "1ST1-S",
                    "Welcome Desk",
                    "100A-N"
                ]
            ],
            "100A-N" : [
                "relative_coords_x" : 1165,
                "relative_coords_y" : 486,
                "geographic_coords" : GeoPoint(
                latitude: 0.0,
                longitude: 0.0
                ),
                "description" : "junction to the right hallway",
                "connection_keys" : [
                    "Front Door",
                    "1ST1-N",
                    "Welcome Desk",
                    "100A-S",
                    "rh1"
                ]
            ],
            "1ST1-S" : [
                "relative_coords_x" : 1007,
            "relative_coords_y" : 382,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" :"Stairs facing south" ,
            "connection_keys" : [
                "100A-S"
            ]
            ],
            "1ST1-N" : [
            "relative_coords_x" : 1170,
            "relative_coords_y" : 355,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" :"Stairs facing north" ,
            "connection_keys" : [
                "100A-N"
            ]
            ],
            "lh1" : [
            "relative_coords_x" : 1021,
            "relative_coords_y" : 516,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" :"First node in hallway one",
            "connection_keys" : [
                "lh2",
                "100A-S",
                "102-N",
            ]
            ],
            "lh2" : [
            "relative_coords_x" : 913,
            "relative_coords_y" : 553,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" : "second node in left hallway",
            "connection_keys" : [
                "lh1",
                "lh3",
                "102-S",
            ]
            ],
            "lh3" : [
            "relative_coords_x" : 792,
            "relative_coords_y" : 594,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" : "third node in left hallway",
            "connection_keys" : [
                "lh2",
                "lh4",
                "110-N"
            ]
            ],
            "lh4" : [
            "relative_coords_x" : 680,
            "relative_coords_y" : 633,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" : "fourth node in left hallway",
            "connection_keys" : [
            "lh3",
                "lh5",
                "110-S"
            ]
            ],
            "lh5" : [
            "relative_coords_x" : 648,
            "relative_coords_y" : 644,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" : "fifth node in left hallway",
            "connection_keys" : [
            "lh4",
                "lh6",
                "120-N",
                "121-N"
            ]
            ],
            "lh6" : [
            "relative_coords_x" : 498,
            "relative_coords_y" : 695,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" : "sixth node in left hallway",
            "connection_keys" : [
                "lh5",
                "lh7",
                "120-S",
                "121-S"
            ]
            ],
            "lh7" : [
            "relative_coords_x" : 344,
            "relative_coords_y" : 748,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" : "seventh node in left hallway",
            "connection_keys" : [
                "lh6",
                "lh8"
            ]
            ],
            "lh8" : [
            "relative_coords_x" : 274,
            "relative_coords_y" : 772,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" : "eighth node in left hallway",
            "connection_keys" : [
                "lh7",
                "lh9"
            ]
            ],
            "lh9" : [
            "relative_coords_x" : 155,
            "relative_coords_y" : 813,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" : "ninth node in left hallway",
            "connection_keys" : [
                "1ST2",
                "lh8"
            ]
            ],
            "1ST2" : [
            "relative_coords_x" : 88,
            "relative_coords_y" : 837,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" : "Far stairs (south)",
            "connection_keys" : [
                "Exit-S",
                "lh9"
            ]
            ],
            "Exit-S" : [
            "relative_coords_x" : 50,
            "relative_coords_y" : 849,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" : "Southside exit",
            "connection_keys" : [
            "1ST2"
            ]
            ],
            "rh1" : [
            "relative_coords_x" : 1271,
            "relative_coords_y" : 486,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" : "first node in right hallway",
            "connection_keys" : [
                "100A-N",
                "rh2"
            ]
            ],
            "rh2" : [
            "relative_coords_x" : 1405,
            "relative_coords_y" : 486,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" : "second node in right hallway",
            "connection_keys" : [
                "rh1",
                "rh3"
            ]
            ],
            "rh3" : [
            "relative_coords_x" : 1450,
            "relative_coords_y" : 486,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" : "third node in right hallway",
            "connection_keys" : [
                "rh2",
                "rh4"
            ]
            ],
            "rh4" : [
            "relative_coords_x" : 1685,
            "relative_coords_y" : 486,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" : "fourth node in right hallway",
            "connection_keys" : [
                "rh3",
                "rh5"
            ]
            ],
            "rh5" : [
            "relative_coords_x" : 1750,
            "relative_coords_y" : 486,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" : "fifth node in right hallway",
            "connection_keys" : [
                "rh4",
                "1ST3"
            ]
            ],
            "1ST3" : [
            "relative_coords_x" : 1795,
            "relative_coords_y" : 486,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" : "Far stairs (north)",
            "connection_keys" : [
                "Exit-N"
            ]
            ],
            "Exit-N" : [
            "relative_coords_x" : 1830,
            "relative_coords_y" : 486,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" : "Northside exit",
            "connection_keys" : ["1ST2"]
            ],
            "102-N" : [
            "relative_coords_x" : 1009,
            "relative_coords_y" : 482,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" : "north entrance to room 102",
            "connection_keys" : [
            "lh1"
            ]
            ],
            "102-S" : [
            "relative_coords_x" : 901,
            "relative_coords_y" : 519,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" : "south entrance to room 102",
            "connection_keys" : [
            "lh2"
            ]
            ],
            "110-N" : [
            "relative_coords_x" : 781,
            "relative_coords_y" : 560,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" : "north entrance to room 110",
            "connection_keys" : [
                "lh3"
            ]
            ],
            "110-S" : [
            "relative_coords_x" : 669,
            "relative_coords_y" : 598,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" : "",
            "connection_keys" : [
            "lh4"
            ]
            ],
            "120-N" : [
            "relative_coords_x" : 636,
            "relative_coords_y" : 609,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" : "south entrance to room 110",
            "connection_keys" : [
                "lh5"
            ]
            ],
            "120-S" : [
            "relative_coords_x" : 486,
            "relative_coords_y" : 661,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" : "",
            "connection_keys" : [
            "lh6"
            ]
            ],
            "121-N" : [
            "relative_coords_x" : 659,
            "relative_coords_y" : 676,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" : "",
            "connection_keys" : [
                "lh5"
            ]
            ],
            "121-S" : [
            "relative_coords_x" : 509,
            "relative_coords_y" : 727,
            "geographic_coords" : GeoPoint(
            latitude: 0.0,
            longitude: 0.0
            ),
            "description" : "",
            "connection_keys" : [
                "lh6"
            ]
    ],
    ],
    "UW2" : [],
    "DISC" : [],
    "LIB" : [],
    "UWBB" : []
    ]

]
