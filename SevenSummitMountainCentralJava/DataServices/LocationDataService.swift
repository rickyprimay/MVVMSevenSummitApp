//
//  LocationDataService.swift
//  SevenSummitMountainCentralJava
//
//  Created by Ricky Primayuda Putra on 18/10/24.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let location: [Location] = [
        Location (
            name: "Mount Merbabu",
            mountainName: "Mount Merbabu",
            height: 3145,
            coordinates: CLLocationCoordinate2D(latitude: -7.4545, longitude: 110.4422),
            description: "Mount Merbabu is a dormant stratovolcano in Central Java province on the Indonesian island of Java. The name Merbabu could be loosely translated as 'Mountain of Ash' from the Javanese combined words; Meru means 'mountain' and awu or abu means 'ash'.",
            imagesName: [
                "merbabu-1",
                "merbabu-2",
                "merbabu-3"
            ],
            link: "https://en.wikipedia.org/wiki/Mount_Merbabu"
        ),
        Location (
            name: "Mount Merapi",
            mountainName: "Mount Merapi",
            height: 2930,
            coordinates: CLLocationCoordinate2D(latitude: -7.5409, longitude: 110.4463),
            description: "Mount Merapi, Gunung Merapi (literally Fire Mountain in Indonesian and Javanese), is an active stratovolcano located on the border between Central Java and Yogyakarta provinces, Indonesia. It is the most active volcano in Indonesia and has erupted regularly since 1548.",
            imagesName: [
                "merapi-1",
                "merapi-2",
                "merapi-3"
            ],
            link: "https://en.wikipedia.org/wiki/Mount_Merapi"
        ),
        Location (
            name: "Mount Sindoro",
            mountainName: "Mount Sindoro",
            height: 3150,
            coordinates: CLLocationCoordinate2D(latitude: -7.3016909547500175, longitude: 109.99566156709729),
            description: "Mount Sindoro is an active stratovolcano in Central Java, Indonesia. The volcano has an elongated profile with a maximum length of 6 km (3.7 mi) extending in the WNW direction, and a maximum width of 4 km (2.5 mi).",
            imagesName: [
                "sindoro-1",
                "sindoro-2",
                "sindoro-3"
            ],
            link: "https://en.wikipedia.org/wiki/Mount_Sindoro"
        ),
        Location (
            name: "Mount Sumbing",
            mountainName: "Mount Sumbing",
            height: 3371,
            coordinates: CLLocationCoordinate2D(latitude: -7.384020865765091, longitude: 110.07262867450254),
            description: "Mount Sumbing is an active stratovolcano in Central Java, Indonesia, symmetrical with Sundoro. The only report of historical eruptions is in 1730. The volcano is located in the northwest part of the Dieng Volcanic Complex.",
            imagesName: [
                "sumbing-1",
                "sumbing-2",
                "sumbing-3"
            ],
            link: "https://en.wikipedia.org/wiki/Mount_Sumbing"
        ),
        Location (
            name: "Mount Prau",
            mountainName: "Mount Prau",
            height: 2565,
            coordinates: CLLocationCoordinate2D(latitude: -7.18964589050201, longitude: 109.92758403305129),
            description: "Mount Prau is a mountain located in Central Java, Indonesia. The mountain is part of the Dieng Volcanic Complex. The mountain is a popular tourist destination in Central Java, Indonesia.",
            imagesName: [
                "prau-1",
                "prau-2",
                "prau-3"
            ],
            link: "https://en.wikipedia.org/wiki/Mount_Prau"
        ),
        Location (
            name: "Mount Slamet",
            mountainName: "Mount Slamet",
            height: 3428,
            coordinates: CLLocationCoordinate2D(latitude: -7.2423, longitude: 109.2085),
            description: "Mount Slamet is an active stratovolcano in Central Java, Indonesia, and is the highest peak on the island of Java. It has a cluster of around three dozen cinder cones on its lower southeast-slope.",
            imagesName: [
                "slamet-1",
                "slamet-2",
                "slamet-3"
            ],
            link: "https://en.wikipedia.org/wiki/Mount_Slamet"
        ),
        Location (
            name: "Mount Lawu",
            mountainName: "Mount Lawu",
            height: 3265,
            coordinates: CLLocationCoordinate2D(latitude: -7.6311, longitude: 111.1971),
            description: "Mount Lawu is a massive compound stratovolcano straddling the border between East Java and Central Java, Indonesia. The north side is deeply eroded and the eastern side contains parasitic craters and cones.",
            imagesName: [
                "lawu-1",
                "lawu-2",
                "lawu-3"
            ],
            link: "https://en.wikipedia.org/wiki/Mount_Lawu"
        )
    ]
    
}
