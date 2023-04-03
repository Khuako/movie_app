const jsonTheaters = """
{
  "items": [
    {
      "id": "tt10366206",
      "title": "John Wick: Chapter 4",
      "fullTitle": "John Wick: Chapter 4 (2023)",
      "year": "2023",
      "releaseState": "24 Mar 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BMDExZGMyOTMtMDgyYi00NGIwLWJhMTEtOTdkZGFjNmZiMTEwXkEyXkFqcGdeQXVyMjM4NTM5NDY@._V1_Ratio0.6699_AL_.jpg",
      "runtimeMins": "169",
      "runtimeStr": "169 mins",
      "plot": "John Wick uncovers a path to defeating The High Table. But before he can earn his freedom, Wick must face off against a new enemy with powerful alliances across the globe and forces that turn old friends into foes.",
      "contentRating": "R",
      "imDbRating": "8.4",
      "imDbRatingCount": "74188",
      "metacriticRating": "78",
      "genres": "Action, Crime, Thriller",
      "genreList": [
        {
          "key": "Action",
          "value": "Action"
        },
        {
          "key": "Crime",
          "value": "Crime"
        },
        {
          "key": "Thriller",
          "value": "Thriller"
        }
      ],
      "directors": "Chad Stahelski",
      "directorList": [
        {
          "id": "nm0821432",
          "name": "Chad Stahelski"
        }
      ],
      "stars": "Keanu Reeves, Laurence Fishburne, George Georgiou, Lance Reddick",
      "starList": [
        {
          "id": "nm0000206",
          "name": "Keanu Reeves"
        },
        {
          "id": "nm0000401",
          "name": "Laurence Fishburne"
        },
        {
          "id": "nm1745190",
          "name": "George Georgiou"
        },
        {
          "id": "nm0714698",
          "name": "Lance Reddick"
        }
      ]
    },
    {
      "id": "tt6710474",
      "title": "Everything Everywhere All at Once",
      "fullTitle": "Everything Everywhere All at Once (2022)",
      "year": "2022",
      "releaseState": "08 Apr 2022",
      "image": "https://m.media-amazon.com/images/M/MV5BYTdiOTIyZTQtNmQ1OS00NjZlLWIyMTgtYzk5Y2M3ZDVmMDk1XkEyXkFqcGdeQXVyMTAzMDg4NzU0._V1_Ratio0.6890_AL_.jpg",
      "runtimeMins": "139",
      "runtimeStr": "139 mins",
      "plot": "A middle-aged Chinese immigrant is swept up into an insane adventure in which she alone can save existence by exploring other universes and connecting with the lives she could have led.",
      "contentRating": "R",
      "imDbRating": "7.9",
      "imDbRatingCount": "410723",
      "metacriticRating": "81",
      "genres": "Action, Adventure, Comedy",
      "genreList": [
        {
          "key": "Action",
          "value": "Action"
        },
        {
          "key": "Adventure",
          "value": "Adventure"
        },
        {
          "key": "Comedy",
          "value": "Comedy"
        }
      ],
      "directors": "Daniel Kwan, Daniel Scheinert",
      "directorList": [
        {
          "id": "nm3453283",
          "name": "Daniel Kwan"
        },
        {
          "id": "nm3215397",
          "name": "Daniel Scheinert"
        }
      ],
      "stars": "Michelle Yeoh, Stephanie Hsu, Jamie Lee Curtis, Ke Huy Quan",
      "starList": [
        {
          "id": "nm0000706",
          "name": "Michelle Yeoh"
        },
        {
          "id": "nm3513533",
          "name": "Stephanie Hsu"
        },
        {
          "id": "nm0000130",
          "name": "Jamie Lee Curtis"
        },
        {
          "id": "nm0702841",
          "name": "Ke Huy Quan"
        }
      ]
    },
    {
      "id": "tt10151854",
      "title": "Shazam! Fury of the Gods",
      "fullTitle": "Shazam! Fury of the Gods (2023)",
      "year": "2023",
      "releaseState": "17 Mar 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BNzJlM2NmZTItOGQyYS00MmE2LTkwZGUtNDFkNmJmZjRjZjcxXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_Ratio0.6699_AL_.jpg",
      "runtimeMins": "130",
      "runtimeStr": "130 mins",
      "plot": "The film continues the story of teenage Billy Batson who, upon reciting the magic word SHAZAM! is transformed into his adult Super Hero alter ego, Shazam.",
      "contentRating": "PG-13",
      "imDbRating": "6.6",
      "imDbRatingCount": "25808",
      "metacriticRating": "47",
      "genres": "Action, Adventure, Comedy",
      "genreList": [
        {
          "key": "Action",
          "value": "Action"
        },
        {
          "key": "Adventure",
          "value": "Adventure"
        },
        {
          "key": "Comedy",
          "value": "Comedy"
        }
      ],
      "directors": "David F. Sandberg",
      "directorList": [
        {
          "id": "nm2497546",
          "name": "David F. Sandberg"
        }
      ],
      "stars": "Zachary Levi, Asher Angel, Jack Dylan Grazer, Rachel Zegler",
      "starList": [
        {
          "id": "nm1157048",
          "name": "Zachary Levi"
        },
        {
          "id": "nm4755508",
          "name": "Asher Angel"
        },
        {
          "id": "nm6244013",
          "name": "Jack Dylan Grazer"
        },
        {
          "id": "nm10399505",
          "name": "Rachel Zegler"
        }
      ]
    },
    {
      "id": "tt17663992",
      "title": "Scream VI",
      "fullTitle": "Scream VI (2023)",
      "year": "2023",
      "releaseState": "10 Mar 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BODBjM2M4YTQtNmJlMS00MGU2LWI4ZGYtZTA1MzdmZDAyMjFkXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_Ratio0.6699_AL_.jpg",
      "runtimeMins": "122",
      "runtimeStr": "122 mins",
      "plot": "In the next installment, the survivors of the Ghostface killings leave Woodsboro behind and start a fresh chapter in New York City.",
      "contentRating": "R",
      "imDbRating": "7.1",
      "imDbRatingCount": "36670",
      "metacriticRating": "61",
      "genres": "Horror, Mystery, Thriller",
      "genreList": [
        {
          "key": "Horror",
          "value": "Horror"
        },
        {
          "key": "Mystery",
          "value": "Mystery"
        },
        {
          "key": "Thriller",
          "value": "Thriller"
        }
      ],
      "directors": "Matt Bettinelli-Olpin, Tyler Gillett",
      "directorList": [
        {
          "id": "nm2366012",
          "name": "Matt Bettinelli-Olpin"
        },
        {
          "id": "nm2419470",
          "name": "Tyler Gillett"
        }
      ],
      "stars": "Courteney Cox, Melissa Barrera, Jenna Ortega, Jasmin Savoy Brown",
      "starList": [
        {
          "id": "nm0001073",
          "name": "Courteney Cox"
        },
        {
          "id": "nm4574440",
          "name": "Melissa Barrera"
        },
        {
          "id": "nm4911194",
          "name": "Jenna Ortega"
        },
        {
          "id": "nm5506401",
          "name": "Jasmin Savoy Brown"
        }
      ]
    },
    {
      "id": "tt14209916",
      "title": "Cocaine Bear",
      "fullTitle": "Cocaine Bear (2023)",
      "year": "2023",
      "releaseState": "24 Feb 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BODAwZDQ5ZjEtZDI1My00MTFiLTg0ZjUtOGE2YTBkOTdjODFhXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_Ratio0.6699_AL_.jpg",
      "runtimeMins": "95",
      "runtimeStr": "95 mins",
      "plot": "An oddball group of cops, criminals, tourists and teens converge on a Georgia forest where a huge black bear goes on a murderous rampage after unintentionally ingesting cocaine.",
      "contentRating": "R",
      "imDbRating": "6",
      "imDbRatingCount": "44135",
      "metacriticRating": "54",
      "genres": "Comedy, Thriller",
      "genreList": [
        {
          "key": "Comedy",
          "value": "Comedy"
        },
        {
          "key": "Thriller",
          "value": "Thriller"
        }
      ],
      "directors": "Elizabeth Banks",
      "directorList": [
        {
          "id": "nm0006969",
          "name": "Elizabeth Banks"
        }
      ],
      "stars": "Keri Russell, Alden Ehrenreich, O'Shea Jackson Jr., Ray Liotta",
      "starList": [
        {
          "id": "nm0005392",
          "name": "Keri Russell"
        },
        {
          "id": "nm2403277",
          "name": "Alden Ehrenreich"
        },
        {
          "id": "nm6578009",
          "name": "O'Shea Jackson Jr."
        },
        {
          "id": "nm0000501",
          "name": "Ray Liotta"
        }
      ]
    },
    {
      "id": "tt2906216",
      "title": "Dungeons & Dragons: Honor Among Thieves",
      "fullTitle": "Dungeons & Dragons: Honor Among Thieves (2023)",
      "year": "2023",
      "releaseState": "31 Mar 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BZjAyMGMwYTEtNDk4ZS00YmY0LThhZjUtOWI4ZjFmZmU4N2I3XkEyXkFqcGdeQXVyMTEyNzQ1MTk0._V1_Ratio0.6794_AL_.jpg",
      "runtimeMins": "134",
      "runtimeStr": "134 mins",
      "plot": "A charming thief and a band of unlikely adventurers embark on an epic quest to retrieve a lost relic, but things go dangerously awry when they run afoul of the wrong people.",
      "contentRating": "PG-13",
      "imDbRating": "7.6",
      "imDbRatingCount": "12010",
      "metacriticRating": "71",
      "genres": "Action, Adventure, Fantasy",
      "genreList": [
        {
          "key": "Action",
          "value": "Action"
        },
        {
          "key": "Adventure",
          "value": "Adventure"
        },
        {
          "key": "Fantasy",
          "value": "Fantasy"
        }
      ],
      "directors": "John Francis Daley, Jonathan Goldstein",
      "directorList": [
        {
          "id": "nm0197855",
          "name": "John Francis Daley"
        },
        {
          "id": "nm0326246",
          "name": "Jonathan Goldstein"
        }
      ],
      "stars": "Chris Pine, Michelle Rodriguez, Regé-Jean Page, Justice Smith",
      "starList": [
        {
          "id": "nm1517976",
          "name": "Chris Pine"
        },
        {
          "id": "nm0735442",
          "name": "Michelle Rodriguez"
        },
        {
          "id": "nm2074546",
          "name": "Regé-Jean Page"
        },
        {
          "id": "nm6819854",
          "name": "Justice Smith"
        }
      ]
    },
    {
      "id": "tt12261776",
      "title": "65",
      "fullTitle": "65 (2023)",
      "year": "2023",
      "releaseState": "10 Mar 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BYzFhM2M1MDUtNDhmNC00YzEzLThiMzctYWYxZTc0MGJhNWYyXkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_Ratio0.7943_AL_.jpg",
      "runtimeMins": "93",
      "runtimeStr": "93 mins",
      "plot": "An astronaut crash lands on a mysterious planet only to discover he's not alone.",
      "contentRating": "PG-13",
      "imDbRating": "5.7",
      "imDbRatingCount": "13423",
      "metacriticRating": "40",
      "genres": "Action, Adventure, Drama",
      "genreList": [
        {
          "key": "Action",
          "value": "Action"
        },
        {
          "key": "Adventure",
          "value": "Adventure"
        },
        {
          "key": "Drama",
          "value": "Drama"
        }
      ],
      "directors": "Scott Beck, Bryan Woods",
      "directorList": [
        {
          "id": "nm1399714",
          "name": "Scott Beck"
        },
        {
          "id": "nm1456816",
          "name": "Bryan Woods"
        }
      ],
      "stars": "Adam Driver, Ariana Greenblatt, Chloe Coleman, Nika King",
      "starList": [
        {
          "id": "nm3485845",
          "name": "Adam Driver"
        },
        {
          "id": "nm7567556",
          "name": "Ariana Greenblatt"
        },
        {
          "id": "nm5668548",
          "name": "Chloe Coleman"
        },
        {
          "id": "nm1519739",
          "name": "Nika King"
        }
      ]
    },
    {
      "id": "tt11145118",
      "title": "Creed III",
      "fullTitle": "Creed III (2023)",
      "year": "2023",
      "releaseState": "03 Mar 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BYWY1ZDY4MmQtYjhiYS00N2QwLTk1NzgtOWI2YzUwZThjNDYwXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_Ratio0.6699_AL_.jpg",
      "runtimeMins": "116",
      "runtimeStr": "116 mins",
      "plot": "Adonis has been thriving in both his career and family life, but when a childhood friend and former boxing prodigy resurfaces, the face-off is more than just a fight.",
      "contentRating": "PG-13",
      "imDbRating": "7.2",
      "imDbRatingCount": "32164",
      "metacriticRating": "73",
      "genres": "Drama, Sport",
      "genreList": [
        {
          "key": "Drama",
          "value": "Drama"
        },
        {
          "key": "Sport",
          "value": "Sport"
        }
      ],
      "directors": "Michael B. Jordan",
      "directorList": [
        {
          "id": "nm0430107",
          "name": "Michael B. Jordan"
        }
      ],
      "stars": "Michael B. Jordan, Tessa Thompson, Jonathan Majors, Wood Harris",
      "starList": [
        {
          "id": "nm0430107",
          "name": "Michael B. Jordan"
        },
        {
          "id": "nm1935086",
          "name": "Tessa Thompson"
        },
        {
          "id": "nm3718007",
          "name": "Jonathan Majors"
        },
        {
          "id": "nm0365445",
          "name": "Wood Harris"
        }
      ]
    },
    {
      "id": "tt16419074",
      "title": "Air",
      "fullTitle": "Air (2023)",
      "year": "2023",
      "releaseState": "05 Apr 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BYmNlOTNlYjUtM2U3Yy00M2ZjLTkxZDQtN2NiNGZiZDI0ZjE3XkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_Ratio0.6699_AL_.jpg",
      "runtimeMins": "112",
      "runtimeStr": "112 mins",
      "plot": "Follows the history of shoe salesman Sonny Vaccaro, and how he led Nike in its pursuit of the greatest athlete in the history of basketball: Michael Jordan.",
      "contentRating": "R",
      "imDbRating": "7.9",
      "imDbRatingCount": "913",
      "metacriticRating": "75",
      "genres": "Drama",
      "genreList": [
        {
          "key": "Drama",
          "value": "Drama"
        }
      ],
      "directors": "Ben Affleck",
      "directorList": [
        {
          "id": "nm0000255",
          "name": "Ben Affleck"
        }
      ],
      "stars": "Matt Damon, Jason Bateman, Ben Affleck, Chris Messina",
      "starList": [
        {
          "id": "nm0000354",
          "name": "Matt Damon"
        },
        {
          "id": "nm0000867",
          "name": "Jason Bateman"
        },
        {
          "id": "nm0000255",
          "name": "Ben Affleck"
        },
        {
          "id": "nm0582149",
          "name": "Chris Messina"
        }
      ]
    },
    {
      "id": "tt1630029",
      "title": "Avatar: The Way of Water",
      "fullTitle": "Avatar: The Way of Water (2022)",
      "year": "2022",
      "releaseState": "16 Dec 2022",
      "image": "https://m.media-amazon.com/images/M/MV5BYjhiNjBlODctY2ZiOC00YjVlLWFlNzAtNTVhNzM1YjI1NzMxXkEyXkFqcGdeQXVyMjQxNTE1MDA@._V1_Ratio0.6986_AL_.jpg",
      "runtimeMins": "192",
      "runtimeStr": "192 mins",
      "plot": "Jake Sully lives with his newfound family formed on the extrasolar moon Pandora. Once a familiar threat returns to finish what was previously started, Jake must work with Neytiri and the army of the Na'vi race to protect their home.",
      "contentRating": "PG-13",
      "imDbRating": "7.8",
      "imDbRatingCount": "332894",
      "metacriticRating": "67",
      "genres": "Action, Adventure, Fantasy",
      "genreList": [
        {
          "key": "Action",
          "value": "Action"
        },
        {
          "key": "Adventure",
          "value": "Adventure"
        },
        {
          "key": "Fantasy",
          "value": "Fantasy"
        }
      ],
      "directors": "James Cameron",
      "directorList": [
        {
          "id": "nm0000116",
          "name": "James Cameron"
        }
      ],
      "stars": "Sam Worthington, Zoe Saldana, Sigourney Weaver, Stephen Lang",
      "starList": [
        {
          "id": "nm0941777",
          "name": "Sam Worthington"
        },
        {
          "id": "nm0757855",
          "name": "Zoe Saldana"
        },
        {
          "id": "nm0000244",
          "name": "Sigourney Weaver"
        },
        {
          "id": "nm0002332",
          "name": "Stephen Lang"
        }
      ]
    },
    {
      "id": "tt10954600",
      "title": "Ant-Man and the Wasp: Quantumania",
      "fullTitle": "Ant-Man and the Wasp: Quantumania (2023)",
      "year": "2023",
      "releaseState": "17 Feb 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BODZhNzlmOGItMWUyYS00Y2Q5LWFlNzMtM2I2NDFkM2ZkYmE1XkEyXkFqcGdeQXVyMTU5OTA4NTIz._V1_Ratio0.6699_AL_.jpg",
      "runtimeMins": "124",
      "runtimeStr": "124 mins",
      "plot": "Scott Lang and Hope Van Dyne, along with Hank Pym and Janet Van Dyne, explore the Quantum Realm, where they interact with strange creatures and embark on an adventure that goes beyond the limits of what they thought was possible.",
      "contentRating": "PG-13",
      "imDbRating": "6.4",
      "imDbRatingCount": "93858",
      "metacriticRating": "48",
      "genres": "Action, Adventure, Comedy",
      "genreList": [
        {
          "key": "Action",
          "value": "Action"
        },
        {
          "key": "Adventure",
          "value": "Adventure"
        },
        {
          "key": "Comedy",
          "value": "Comedy"
        }
      ],
      "directors": "Peyton Reed",
      "directorList": [
        {
          "id": "nm0715636",
          "name": "Peyton Reed"
        }
      ],
      "stars": "Paul Rudd, Evangeline Lilly, Michael Douglas, Michelle Pfeiffer",
      "starList": [
        {
          "id": "nm0748620",
          "name": "Paul Rudd"
        },
        {
          "id": "nm1431940",
          "name": "Evangeline Lilly"
        },
        {
          "id": "nm0000140",
          "name": "Michael Douglas"
        },
        {
          "id": "nm0000201",
          "name": "Michelle Pfeiffer"
        }
      ]
    },
    {
      "id": "tt14153080",
      "title": "A Good Person",
      "fullTitle": "A Good Person (2023)",
      "year": "2023",
      "releaseState": "24 Mar 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BYzBkZGYyM2QtNzgwYy00NmZjLTk2ZTItYzY3ZTdjY2M0YmQwXkEyXkFqcGdeQXVyMjkwOTAyMDU@._V1_Ratio0.6699_AL_.jpg",
      "runtimeMins": "128",
      "runtimeStr": "128 mins",
      "plot": "Follows Allison, whose life falls apart following her involvement in a fatal accident.",
      "contentRating": "R",
      "imDbRating": "7.3",
      "imDbRatingCount": "1042",
      "metacriticRating": "50",
      "genres": "Drama",
      "genreList": [
        {
          "key": "Drama",
          "value": "Drama"
        }
      ],
      "directors": "Zach Braff",
      "directorList": [
        {
          "id": "nm0103785",
          "name": "Zach Braff"
        }
      ],
      "stars": "Florence Pugh, Morgan Freeman, Celeste O'Connor, Molly Shannon",
      "starList": [
        {
          "id": "nm6073955",
          "name": "Florence Pugh"
        },
        {
          "id": "nm0000151",
          "name": "Morgan Freeman"
        },
        {
          "id": "nm9305936",
          "name": "Celeste O'Connor"
        },
        {
          "id": "nm0788340",
          "name": "Molly Shannon"
        }
      ]
    },
    {
      "id": "tt15339570",
      "title": "Champions",
      "fullTitle": "Champions (2023)",
      "year": "2023",
      "releaseState": "10 Mar 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BOTYwMWJjZTgtMzJiNS00OGIzLWE1NDYtNjgwMDUwYjZiOTc5XkEyXkFqcGdeQXVyMTA2MDU0NjM5._V1_Ratio0.6699_AL_.jpg",
      "runtimeMins": "124",
      "runtimeStr": "124 mins",
      "plot": "A former minor-league basketball coach is ordered by the court to manage a team of players with intellectual disabilities. He soon realizes that despite his doubts, together, this team can go further than they ever imagined.",
      "contentRating": "PG-13",
      "imDbRating": "6.8",
      "imDbRatingCount": "4113",
      "metacriticRating": "50",
      "genres": "Comedy, Drama, Sport",
      "genreList": [
        {
          "key": "Comedy",
          "value": "Comedy"
        },
        {
          "key": "Drama",
          "value": "Drama"
        },
        {
          "key": "Sport",
          "value": "Sport"
        }
      ],
      "directors": "Bobby Farrelly",
      "directorList": [
        {
          "id": "nm0125803",
          "name": "Bobby Farrelly"
        }
      ],
      "stars": "Woody Harrelson, Kaitlin Olson, Matt Cook, Ernie Hudson",
      "starList": [
        {
          "id": "nm0000437",
          "name": "Woody Harrelson"
        },
        {
          "id": "nm0647698",
          "name": "Kaitlin Olson"
        },
        {
          "id": "nm3129512",
          "name": "Matt Cook"
        },
        {
          "id": "nm0001368",
          "name": "Ernie Hudson"
        }
      ]
    },
    {
      "id": "tt10098448",
      "title": "Jesus Revolution",
      "fullTitle": "Jesus Revolution (2023)",
      "year": "2023",
      "releaseState": "24 Feb 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BZjQ4M2JiMTEtNDhiMi00OWM1LTkwMWEtODdjYTQxNWQyOTFiXkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_Ratio0.6699_AL_.jpg",
      "runtimeMins": "120",
      "runtimeStr": "120 mins",
      "plot": "The true story of a national spiritual awakening in the early 1970s and its origins within a community of teenage hippies in Southern California.",
      "contentRating": "PG-13",
      "imDbRating": "7.8",
      "imDbRatingCount": "4749",
      "metacriticRating": "46",
      "genres": "Drama",
      "genreList": [
        {
          "key": "Drama",
          "value": "Drama"
        }
      ],
      "directors": "Jon Erwin, Brent McCorkle",
      "directorList": [
        {
          "id": "nm2296528",
          "name": "Jon Erwin"
        },
        {
          "id": "nm3634546",
          "name": "Brent McCorkle"
        }
      ],
      "stars": "Joel Courtney, Jonathan Roumie, Kimberly Williams-Paisley, Anna Grace Barlow",
      "starList": [
        {
          "id": "nm1525807",
          "name": "Joel Courtney"
        },
        {
          "id": "nm0745751",
          "name": "Jonathan Roumie"
        },
        {
          "id": "nm0931090",
          "name": "Kimberly Williams-Paisley"
        },
        {
          "id": "nm2953809",
          "name": "Anna Grace Barlow"
        }
      ]
    },
    {
      "id": "tt13421498",
      "title": "The Lost King",
      "fullTitle": "The Lost King (2022)",
      "year": "2022",
      "releaseState": "24 Mar 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BOTNiMWE2NWEtYjViMC00ZWI1LWJiMzgtNGU2ZmVkMGNkYTU2XkEyXkFqcGdeQXVyMTk5MTY4Nzg@._V1_Ratio0.6699_AL_.jpg",
      "runtimeMins": "108",
      "runtimeStr": "108 mins",
      "plot": "An amateur historian defies the stodgy academic establishment in her efforts to find King Richard III's remains, which were lost for over 500 years.",
      "contentRating": "PG-13",
      "imDbRating": "6.6",
      "imDbRatingCount": "3388",
      "metacriticRating": "65",
      "genres": "Comedy, Drama",
      "genreList": [
        {
          "key": "Comedy",
          "value": "Comedy"
        },
        {
          "key": "Drama",
          "value": "Drama"
        }
      ],
      "directors": "Stephen Frears",
      "directorList": [
        {
          "id": "nm0001241",
          "name": "Stephen Frears"
        }
      ],
      "stars": "Sally Hawkins, Shonagh Price, Helen Katamba, Lewis Macleod",
      "starList": [
        {
          "id": "nm1020089",
          "name": "Sally Hawkins"
        },
        {
          "id": "nm0697154",
          "name": "Shonagh Price"
        },
        {
          "id": "nm9844932",
          "name": "Helen Katamba"
        },
        {
          "id": "nm0533914",
          "name": "Lewis Macleod"
        }
      ]
    },
    {
      "id": "tt2071590",
      "title": "Spinning Gold",
      "fullTitle": "Spinning Gold (2023)",
      "year": "2023",
      "releaseState": "31 Mar 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BMjA3ZWRmZTgtZWJhNi00NjgxLWIzZWQtODdjZDMxODVkODAyXkEyXkFqcGdeQXVyMjI0NjI0Nw@@._V1_Ratio0.6699_AL_.jpg",
      "runtimeMins": "137",
      "runtimeStr": "137 mins",
      "plot": "A biopic of 1970s record producer Neil Bogart, co-founder of Casablanca Records.",
      "contentRating": "R",
      "imDbRating": "6.8",
      "imDbRatingCount": "88",
      "metacriticRating": "39",
      "genres": "Biography, Drama, Music",
      "genreList": [
        {
          "key": "Biography",
          "value": "Biography"
        },
        {
          "key": "Drama",
          "value": "Drama"
        },
        {
          "key": "Music",
          "value": "Music"
        }
      ],
      "directors": "Timothy Scott Bogart",
      "directorList": [
        {
          "id": "nm0091579",
          "name": "Timothy Scott Bogart"
        }
      ],
      "stars": "Jeremy Jordan, Michelle Monaghan, Jay Pharoah, Lyndsy Fonseca",
      "starList": [
        {
          "id": "nm2921091",
          "name": "Jeremy Jordan"
        },
        {
          "id": "nm1157358",
          "name": "Michelle Monaghan"
        },
        {
          "id": "nm3982894",
          "name": "Jay Pharoah"
        },
        {
          "id": "nm0960912",
          "name": "Lyndsy Fonseca"
        }
      ]
    },
    {
      "id": "tt9472334",
      "title": "Malum",
      "fullTitle": "Malum (2023)",
      "year": "2023",
      "releaseState": "31 Mar 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BNmE1YjY2YTgtNmZkNy00NzU1LWI2NTQtNWI3OTBlZmJjMTgxXkEyXkFqcGdeQXVyMTQzNTA5MzYz._V1_Ratio0.6699_AL_.jpg",
      "runtimeMins": "92",
      "runtimeStr": "92 mins",
      "plot": "A rookie police officer willingly takes the last shift at a newly decommissioned police station in an attempt to uncover the mysterious connection between her father's death and a vicious cult.",
      "contentRating": "",
      "imDbRating": "6.6",
      "imDbRatingCount": "65",
      "metacriticRating": "",
      "genres": "Drama, Horror, Thriller",
      "genreList": [
        {
          "key": "Drama",
          "value": "Drama"
        },
        {
          "key": "Horror",
          "value": "Horror"
        },
        {
          "key": "Thriller",
          "value": "Thriller"
        }
      ],
      "directors": "Anthony DiBlasi",
      "directorList": [
        {
          "id": "nm1304669",
          "name": "Anthony DiBlasi"
        }
      ],
      "stars": "Jessica Sula, Natalie Victoria, Candice Coke, Clarke Wolfe",
      "starList": [
        {
          "id": "nm4088627",
          "name": "Jessica Sula"
        },
        {
          "id": "nm2210947",
          "name": "Natalie Victoria"
        },
        {
          "id": "nm1051245",
          "name": "Candice Coke"
        },
        {
          "id": "nm4744994",
          "name": "Clarke Wolfe"
        }
      ]
    },
    {
      "id": "tt0116282",
      "title": "Fargo",
      "fullTitle": "Fargo (1996)",
      "year": "1996",
      "releaseState": "05 Apr 1996",
      "image": "https://m.media-amazon.com/images/M/MV5BNDJiZDgyZjctYmRjMS00ZjdkLTkwMTEtNGU1NDg3NDQ0Yzk1XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6794_AL_.jpg",
      "runtimeMins": "98",
      "runtimeStr": "98 mins",
      "plot": "Minnesota car salesman Jerry Lundegaard's inept crime falls apart due to his and his henchmen's bungling and the persistent police work of the quite pregnant Marge Gunderson.",
      "contentRating": "R",
      "imDbRating": "8.1",
      "imDbRatingCount": "688167",
      "metacriticRating": "86",
      "genres": "Crime, Thriller",
      "genreList": [
        {
          "key": "Crime",
          "value": "Crime"
        },
        {
          "key": "Thriller",
          "value": "Thriller"
        }
      ],
      "directors": "Joel Coen, Ethan Coen",
      "directorList": [
        {
          "id": "nm0001054",
          "name": "Joel Coen"
        },
        {
          "id": "nm0001053",
          "name": "Ethan Coen"
        }
      ],
      "stars": "William H. Macy, Frances McDormand, Steve Buscemi, Peter Stormare",
      "starList": [
        {
          "id": "nm0000513",
          "name": "William H. Macy"
        },
        {
          "id": "nm0000531",
          "name": "Frances McDormand"
        },
        {
          "id": "nm0000114",
          "name": "Steve Buscemi"
        },
        {
          "id": "nm0001780",
          "name": "Peter Stormare"
        }
      ]
    },
    {
      "id": "tt23177868",
      "title": "Mummies",
      "fullTitle": "Mummies (2023)",
      "year": "2023",
      "releaseState": "24 Feb 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BZWU0ZjJiOGItZDUwNy00MDE1LTk2ZjEtY2YwMzQxZGJjYjFjXkEyXkFqcGdeQXVyNzc5MjA3OA@@._V1_Ratio0.6794_AL_.jpg",
      "runtimeMins": "88",
      "runtimeStr": "88 mins",
      "plot": "It follows three mummies as they end up in present-day London and embark on a journey in search of an old ring belonging to the Royal Family, stolen by the ambitious archaeologist Lord Carnaby.",
      "contentRating": "PG",
      "imDbRating": "5.8",
      "imDbRatingCount": "1756",
      "metacriticRating": "",
      "genres": "Animation, Comedy, Family",
      "genreList": [
        {
          "key": "Animation",
          "value": "Animation"
        },
        {
          "key": "Comedy",
          "value": "Comedy"
        },
        {
          "key": "Family",
          "value": "Family"
        }
      ],
      "directors": "Juan Jesús García Galocha",
      "directorList": [
        {
          "id": "nm5231416",
          "name": "Juan Jesús García Galocha"
        }
      ],
      "stars": "Óscar Barberán, Ana Esther Alborg, Luis Pérez Reina, María Luisa Solá",
      "starList": [
        {
          "id": "nm1504627",
          "name": "Óscar Barberán"
        },
        {
          "id": "nm1617448",
          "name": "Ana Esther Alborg"
        },
        {
          "id": "nm14243557",
          "name": "Luis Pérez Reina"
        },
        {
          "id": "nm1409021",
          "name": "María Luisa Solá"
        }
      ]
    },
    {
      "id": "tt12427158",
      "title": "A Thousand and One",
      "fullTitle": "A Thousand and One (2023)",
      "year": "2023",
      "releaseState": "31 Mar 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BZTZjNDQxYjctMmI0OS00MzZlLTg2MjEtMDAwNDY5OWRkYWQwXkEyXkFqcGdeQXVyMTA2MDU0NjM5._V1_Ratio0.6699_AL_.jpg",
      "runtimeMins": "117",
      "runtimeStr": "117 mins",
      "plot": "After unapologetic and fiercely loyal Inez kidnaps her son Terry from the foster care system, mother and son set out to reclaim their sense of home, identity, and stability, in a rapidly changing New York City.",
      "contentRating": "R",
      "imDbRating": "7.4",
      "imDbRatingCount": "378",
      "metacriticRating": "80",
      "genres": "Crime, Drama",
      "genreList": [
        {
          "key": "Crime",
          "value": "Crime"
        },
        {
          "key": "Drama",
          "value": "Drama"
        }
      ],
      "directors": "A.V. Rockwell",
      "directorList": [
        {
          "id": "nm5690427",
          "name": "A.V. Rockwell"
        }
      ],
      "stars": "Teyana Taylor, Aaron Kingsley Adetola, Aven Courtney, Josiah Cross",
      "starList": [
        {
          "id": "nm3692520",
          "name": "Teyana Taylor"
        },
        {
          "id": "nm11242885",
          "name": "Aaron Kingsley Adetola"
        },
        {
          "id": "nm9300564",
          "name": "Aven Courtney"
        },
        {
          "id": "nm8582283",
          "name": "Josiah Cross"
        }
      ]
    },
    {
      "id": "tt0073629",
      "title": "The Rocky Horror Picture Show",
      "fullTitle": "The Rocky Horror Picture Show (1975)",
      "year": "1975",
      "releaseState": "31 Aug 1975",
      "image": "https://m.media-amazon.com/images/M/MV5BOGIzYjM3YzMtMjk5ZS00NDY2LTllMjEtNjYwZjhmMDNhMDBkXkEyXkFqcGdeQXVyODUzMjQxMTA@._V1_Ratio0.6699_AL_.jpg",
      "runtimeMins": "100",
      "runtimeStr": "100 mins",
      "plot": "A newly-engaged couple have a breakdown in an isolated area and must seek shelter at the bizarre residence of Dr. Frank-n-Furter.",
      "contentRating": "R",
      "imDbRating": "7.4",
      "imDbRatingCount": "156654",
      "metacriticRating": "65",
      "genres": "Comedy, Horror, Musical",
      "genreList": [
        {
          "key": "Comedy",
          "value": "Comedy"
        },
        {
          "key": "Horror",
          "value": "Horror"
        },
        {
          "key": "Musical",
          "value": "Musical"
        }
      ],
      "directors": "Jim Sharman",
      "directorList": [
        {
          "id": "nm0788940",
          "name": "Jim Sharman"
        }
      ],
      "stars": "Tim Curry, Susan Sarandon, Barry Bostwick, Richard O'Brien",
      "starList": [
        {
          "id": "nm0000347",
          "name": "Tim Curry"
        },
        {
          "id": "nm0000215",
          "name": "Susan Sarandon"
        },
        {
          "id": "nm0000960",
          "name": "Barry Bostwick"
        },
        {
          "id": "nm0639782",
          "name": "Richard O'Brien"
        }
      ]
    },
    {
      "id": "tt8277246",
      "title": "His Only Son",
      "fullTitle": "His Only Son (2023)",
      "year": "2023",
      "releaseState": "31 Mar 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BZTU5MTY4OGMtYTRiMS00ZTA1LThmMGQtOWQ4YzE4NThlYjljXkEyXkFqcGdeQXVyNzYzMjAyMzU@._V1_Ratio0.6699_AL_.jpg",
      "runtimeMins": "106",
      "runtimeStr": "106 mins",
      "plot": "After being called on by the Lord, Abraham's faith is tested on his three day journey to sacrifice his son.",
      "contentRating": "PG-13",
      "imDbRating": "7.7",
      "imDbRatingCount": "117",
      "metacriticRating": "",
      "genres": "Drama, History",
      "genreList": [
        {
          "key": "Drama",
          "value": "Drama"
        },
        {
          "key": "History",
          "value": "History"
        }
      ],
      "directors": "David Helling",
      "directorList": [
        {
          "id": "nm5278287",
          "name": "David Helling"
        }
      ],
      "stars": "Nicolas Mouawad, Sara Seyed, Daniel da Silva, Edaan Moskowitz",
      "starList": [
        {
          "id": "nm3369005",
          "name": "Nicolas Mouawad"
        },
        {
          "id": "nm10211037",
          "name": "Sara Seyed"
        },
        {
          "id": "nm4362629",
          "name": "Daniel da Silva"
        },
        {
          "id": "nm7212956",
          "name": "Edaan Moskowitz"
        }
      ]
    },
    {
      "id": "tt19719836",
      "title": "Return to Seoul",
      "fullTitle": "Return to Seoul (2022)",
      "year": "2022",
      "releaseState": "18 Nov 2022",
      "image": "https://m.media-amazon.com/images/M/MV5BN2I0ZTc5MjktMDllYi00MTNhLTg5YzMtZmQxYWNkYzUzYTAyXkEyXkFqcGdeQXVyMTQyODg5MjQw._V1_Ratio0.6699_AL_.jpg",
      "runtimeMins": "119",
      "runtimeStr": "119 mins",
      "plot": "A twenty-five-year-old French woman returns to Korea, the country she was born in before being adopted by a French couple, for the very first time. She decides to track down her biological parents, but her journey takes a surprising turn.",
      "contentRating": "R",
      "imDbRating": "7.1",
      "imDbRatingCount": "1363",
      "metacriticRating": "87",
      "genres": "Drama",
      "genreList": [
        {
          "key": "Drama",
          "value": "Drama"
        }
      ],
      "directors": "Davy Chou",
      "directorList": [
        {
          "id": "nm1976187",
          "name": "Davy Chou"
        }
      ],
      "stars": "Park Ji-min, Oh Kwang-rok, Guka Han, Kim Sun-young",
      "starList": [
        {
          "id": "nm13973657",
          "name": "Park Ji-min"
        },
        {
          "id": "nm1059108",
          "name": "Oh Kwang-rok"
        },
        {
          "id": "nm13580099",
          "name": "Guka Han"
        },
        {
          "id": "nm6728658",
          "name": "Kim Sun-young"
        }
      ]
    },
    {
      "id": "tt0887883",
      "title": "Burn After Reading",
      "fullTitle": "Burn After Reading (2008)",
      "year": "2008",
      "releaseState": "12 Sep 2008",
      "image": "https://m.media-amazon.com/images/M/MV5BYzYwMjZhOGEtMGZlZS00Mjg1LTlkMDktYzJiZDU4MzAxZDRiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6699_AL_.jpg",
      "runtimeMins": "96",
      "runtimeStr": "96 mins",
      "plot": "A disk containing mysterious information from a CIA agent ends up in the hands of two unscrupulous and daft gym employees who attempt to sell it.",
      "contentRating": "R",
      "imDbRating": "7",
      "imDbRatingCount": "339124",
      "metacriticRating": "63",
      "genres": "Comedy, Crime, Drama",
      "genreList": [
        {
          "key": "Comedy",
          "value": "Comedy"
        },
        {
          "key": "Crime",
          "value": "Crime"
        },
        {
          "key": "Drama",
          "value": "Drama"
        }
      ],
      "directors": "Ethan Coen, Joel Coen",
      "directorList": [
        {
          "id": "nm0001053",
          "name": "Ethan Coen"
        },
        {
          "id": "nm0001054",
          "name": "Joel Coen"
        }
      ],
      "stars": "Brad Pitt, Frances McDormand, George Clooney, John Malkovich",
      "starList": [
        {
          "id": "nm0000093",
          "name": "Brad Pitt"
        },
        {
          "id": "nm0000531",
          "name": "Frances McDormand"
        },
        {
          "id": "nm0000123",
          "name": "George Clooney"
        },
        {
          "id": "nm0000518",
          "name": "John Malkovich"
        }
      ]
    },
    {
      "id": "tt0475290",
      "title": "Hail, Caesar!",
      "fullTitle": "Hail, Caesar! (2016)",
      "year": "2016",
      "releaseState": "05 Feb 2016",
      "image": "https://m.media-amazon.com/images/M/MV5BOTI1M2FlMzItY2VjYS00Y2VkLWI5OTQtMzA0MWMyNmQzZmQ0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6699_AL_.jpg",
      "runtimeMins": "106",
      "runtimeStr": "106 mins",
      "plot": "A Hollywood fixer in the 1950s works to keep the studio's stars in line.",
      "contentRating": "PG-13",
      "imDbRating": "6.3",
      "imDbRatingCount": "138124",
      "metacriticRating": "72",
      "genres": "Comedy, Drama, Mystery",
      "genreList": [
        {
          "key": "Comedy",
          "value": "Comedy"
        },
        {
          "key": "Drama",
          "value": "Drama"
        },
        {
          "key": "Mystery",
          "value": "Mystery"
        }
      ],
      "directors": "Ethan Coen, Joel Coen",
      "directorList": [
        {
          "id": "nm0001053",
          "name": "Ethan Coen"
        },
        {
          "id": "nm0001054",
          "name": "Joel Coen"
        }
      ],
      "stars": "Josh Brolin, George Clooney, Alden Ehrenreich, Ralph Fiennes",
      "starList": [
        {
          "id": "nm0000982",
          "name": "Josh Brolin"
        },
        {
          "id": "nm0000123",
          "name": "George Clooney"
        },
        {
          "id": "nm2403277",
          "name": "Alden Ehrenreich"
        },
        {
          "id": "nm0000146",
          "name": "Ralph Fiennes"
        }
      ]
    },
    {
      "id": "tt1019452",
      "title": "A Serious Man",
      "fullTitle": "A Serious Man (2009)",
      "year": "2009",
      "releaseState": "06 Nov 2009",
      "image": "https://m.media-amazon.com/images/M/MV5BNGZkODlhMjktNzhhMC00YjFiLWJmODMtNjQwOGMzZjMxNTZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6699_AL_.jpg",
      "runtimeMins": "106",
      "runtimeStr": "106 mins",
      "plot": "Larry Gopnik, a Midwestern physics teacher, watches his life unravel over multiple sudden incidents. Though seeking meaning and answers amidst his turmoils, he seems to keep sinking.",
      "contentRating": "R",
      "imDbRating": "7",
      "imDbRatingCount": "145302",
      "metacriticRating": "86",
      "genres": "Comedy, Drama",
      "genreList": [
        {
          "key": "Comedy",
          "value": "Comedy"
        },
        {
          "key": "Drama",
          "value": "Drama"
        }
      ],
      "directors": "Ethan Coen, Joel Coen",
      "directorList": [
        {
          "id": "nm0001053",
          "name": "Ethan Coen"
        },
        {
          "id": "nm0001054",
          "name": "Joel Coen"
        }
      ],
      "stars": "Michael Stuhlbarg, Richard Kind, Sari Lennick, Fred Melamed",
      "starList": [
        {
          "id": "nm0836121",
          "name": "Michael Stuhlbarg"
        },
        {
          "id": "nm0454236",
          "name": "Richard Kind"
        },
        {
          "id": "nm3102689",
          "name": "Sari Lennick"
        },
        {
          "id": "nm0577329",
          "name": "Fred Melamed"
        }
      ]
    },
    {
      "id": "tt11698800",
      "title": "Enys Men",
      "fullTitle": "Enys Men (2022)",
      "year": "2022",
      "releaseState": "18 Apr 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BOThmY2FlYmQtYTM4OS00MWM5LThiNGMtNjExYjQ2NjExZmViXkEyXkFqcGdeQXVyMTMwODM2ODM@._V1_Ratio0.6699_AL_.jpg",
      "runtimeMins": "91",
      "runtimeStr": "91 mins",
      "plot": "Set in 1973 on an uninhabited island off the Cornish coast, a wildlife volunteer's daily observations of a rare flower turn into a metaphysical journey that forces her as well as the viewer to question what is real and what is nightmare.",
      "contentRating": "",
      "imDbRating": "6.2",
      "imDbRatingCount": "756",
      "metacriticRating": "79",
      "genres": "Horror",
      "genreList": [
        {
          "key": "Horror",
          "value": "Horror"
        }
      ],
      "directors": "Mark Jenkin",
      "directorList": [
        {
          "id": "nm1985490",
          "name": "Mark Jenkin"
        }
      ],
      "stars": "Mary Woodvine, Edward Rowe, Flo Crowe, John Woodvine",
      "starList": [
        {
          "id": "nm0940893",
          "name": "Mary Woodvine"
        },
        {
          "id": "nm8196922",
          "name": "Edward Rowe"
        },
        {
          "id": "nm13633116",
          "name": "Flo Crowe"
        },
        {
          "id": "nm0940892",
          "name": "John Woodvine"
        }
      ]
    },
    {
      "id": "tt13483866",
      "title": "Linoleum",
      "fullTitle": "Linoleum (2022)",
      "year": "2022",
      "releaseState": "28 Mar 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BMDY4NmYxODMtMzNhMi00M2YxLTgwNDEtYjA2OTQ1YTEzYjYxXkEyXkFqcGdeQXVyMzQwMTY2Nzk@._V1_Ratio0.6699_AL_.jpg",
      "runtimeMins": "101",
      "runtimeStr": "101 mins",
      "plot": "When the host of a failing children's science show tries to fulfill his childhood dream of becoming an astronaut by building a rocket ship in his garage, a series of bizarre events occur that cause him to question his own reality.",
      "contentRating": "",
      "imDbRating": "7.4",
      "imDbRatingCount": "247",
      "metacriticRating": "80",
      "genres": "Comedy, Drama, Sci-Fi",
      "genreList": [
        {
          "key": "Comedy",
          "value": "Comedy"
        },
        {
          "key": "Drama",
          "value": "Drama"
        },
        {
          "key": "Sci-Fi",
          "value": "Sci-Fi"
        }
      ],
      "directors": "Colin West",
      "directorList": [
        {
          "id": "nm4518474",
          "name": "Colin West"
        }
      ],
      "stars": "Jim Gaffigan, Rhea Seehorn, Katelyn Nacon, Gabriel Rush",
      "starList": [
        {
          "id": "nm0300712",
          "name": "Jim Gaffigan"
        },
        {
          "id": "nm0781533",
          "name": "Rhea Seehorn"
        },
        {
          "id": "nm5393649",
          "name": "Katelyn Nacon"
        },
        {
          "id": "nm3513522",
          "name": "Gabriel Rush"
        }
      ]
    },
    {
      "id": "tt0098577",
      "title": "Vampire's Kiss",
      "fullTitle": "Vampire's Kiss (1988)",
      "year": "1988",
      "releaseState": "16 Jun 1989",
      "image": "https://m.media-amazon.com/images/M/MV5BMTM1MDAyMDYxMV5BMl5BanBnXkFtZTcwNDQwMzc3NA@@._V1_Ratio0.6699_AL_.jpg",
      "runtimeMins": "103",
      "runtimeStr": "103 mins",
      "plot": "After an encounter with a neck-biter, a publishing executive thinks that he's turning into a vampire.",
      "contentRating": "R",
      "imDbRating": "6.1",
      "imDbRatingCount": "18893",
      "metacriticRating": "30",
      "genres": "Comedy, Crime, Fantasy",
      "genreList": [
        {
          "key": "Comedy",
          "value": "Comedy"
        },
        {
          "key": "Crime",
          "value": "Crime"
        },
        {
          "key": "Fantasy",
          "value": "Fantasy"
        }
      ],
      "directors": "Robert Bierman",
      "directorList": [
        {
          "id": "nm0081590",
          "name": "Robert Bierman"
        }
      ],
      "stars": "Nicolas Cage, Maria Conchita Alonso, Jennifer Beals, Elizabeth Ashley",
      "starList": [
        {
          "id": "nm0000115",
          "name": "Nicolas Cage"
        },
        {
          "id": "nm0000744",
          "name": "Maria Conchita Alonso"
        },
        {
          "id": "nm0000884",
          "name": "Jennifer Beals"
        },
        {
          "id": "nm0039051",
          "name": "Elizabeth Ashley"
        }
      ]
    },
    {
      "id": "tt15302222",
      "title": "Bholaa",
      "fullTitle": "Bholaa (2023)",
      "year": "2023",
      "releaseState": "30 Mar 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BZjMwNDI3YmMtZmVkNy00OWNlLThhYWItOWEzNzhhYzg2NzBjXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_Ratio0.7464_AL_.jpg",
      "runtimeMins": "144",
      "runtimeStr": "144 mins",
      "plot": "After getting out of prison and the desire to meet his daughter, Bholaa's plans are interrupted by a well-orchestrated drug bust.",
      "contentRating": "",
      "imDbRating": "8.1",
      "imDbRatingCount": "9890",
      "metacriticRating": "",
      "genres": "Action, Adventure, Crime",
      "genreList": [
        {
          "key": "Action",
          "value": "Action"
        },
        {
          "key": "Adventure",
          "value": "Adventure"
        },
        {
          "key": "Crime",
          "value": "Crime"
        }
      ],
      "directors": "Ajay Devgn",
      "directorList": [
        {
          "id": "nm0222426",
          "name": "Ajay Devgn"
        }
      ],
      "stars": "Ajay Devgn, Tabu, Amala Paul, Sanjay Mishra",
      "starList": [
        {
          "id": "nm0222426",
          "name": "Ajay Devgn"
        },
        {
          "id": "nm0007102",
          "name": "Tabu"
        },
        {
          "id": "nm3898762",
          "name": "Amala Paul"
        },
        {
          "id": "nm0592799",
          "name": "Sanjay Mishra"
        }
      ]
    },
    {
      "id": "tt15440322",
      "title": "Dasara",
      "fullTitle": "Dasara (2023)",
      "year": "2023",
      "releaseState": "30 Mar 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BNTBhMTQ3NGItMWM5Mi00NzlmLTk2YWEtMmIyOWIwMGM5ZGJmXkEyXkFqcGdeQXVyMTQ3Mzk2MDg4._V1_Ratio0.6699_AL_.jpg",
      "runtimeMins": "156",
      "runtimeStr": "156 mins",
      "plot": "Set in the backdrop of Singareni coal mines near Godavarikhani of Telangana.",
      "contentRating": "",
      "imDbRating": "8",
      "imDbRatingCount": "3200",
      "metacriticRating": "",
      "genres": "Action, Adventure, Drama",
      "genreList": [
        {
          "key": "Action",
          "value": "Action"
        },
        {
          "key": "Adventure",
          "value": "Adventure"
        },
        {
          "key": "Drama",
          "value": "Drama"
        }
      ],
      "directors": "Srikanth Odhela",
      "directorList": [
        {
          "id": "nm9577930",
          "name": "Srikanth Odhela"
        }
      ],
      "stars": "Nani, Keerthy Suresh, Shine Tom Chacko, Dheekshith Shetty",
      "starList": [
        {
          "id": "nm3761004",
          "name": "Nani"
        },
        {
          "id": "nm7146337",
          "name": "Keerthy Suresh"
        },
        {
          "id": "nm3557375",
          "name": "Shine Tom Chacko"
        },
        {
          "id": "nm11341642",
          "name": "Dheekshith Shetty"
        }
      ]
    },
    {
      "id": "tt6902394",
      "title": "Theory of Ambitions",
      "fullTitle": "Theory of Ambitions (2022)",
      "year": "2022",
      "releaseState": "05 Feb 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BNzM1Njc0ZjgtMDU2YS00MjlhLWEzY2UtMTM4NDQ4YjllYjRmXkEyXkFqcGdeQXVyODMyOTYyMTM@._V1_Ratio0.7081_AL_.jpg",
      "runtimeMins": "144",
      "runtimeStr": "144 mins",
      "plot": "Follows Lui Lok, a police officer who decides to make a name for himself within the police force by controlling organized crime.",
      "contentRating": "",
      "imDbRating": "6.1",
      "imDbRatingCount": "208",
      "metacriticRating": "",
      "genres": "Crime, Drama, Thriller",
      "genreList": [
        {
          "key": "Crime",
          "value": "Crime"
        },
        {
          "key": "Drama",
          "value": "Drama"
        },
        {
          "key": "Thriller",
          "value": "Thriller"
        }
      ],
      "directors": "Philip Yung",
      "directorList": [
        {
          "id": "nm3491515",
          "name": "Philip Yung"
        }
      ],
      "stars": "Tony Leung Chiu-wai, Aaron Kwok, Jessie Li, Michael Hui",
      "starList": [
        {
          "id": "nm0504897",
          "name": "Tony Leung Chiu-wai"
        },
        {
          "id": "nm0477209",
          "name": "Aaron Kwok"
        },
        {
          "id": "nm7097759",
          "name": "Jessie Li"
        },
        {
          "id": "nm0401201",
          "name": "Michael Hui"
        }
      ]
    },
    {
      "id": "tt11732164",
      "title": "Pathu Thala",
      "fullTitle": "Pathu Thala (2023)",
      "year": "2023",
      "releaseState": "30 Mar 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BZTkzMjJiMTMtNDU4Yy00YmRiLWE1OTEtNjQ0NDljMjMxNzhiXkEyXkFqcGdeQXVyMTI1NDAzMzM0._V1_Ratio0.6699_AL_.jpg",
      "runtimeMins": "151",
      "runtimeStr": "151 mins",
      "plot": "An undercover cop goes into big world where a place is taken over by a don, where his safety may be compromised",
      "contentRating": "",
      "imDbRating": "8.9",
      "imDbRatingCount": "3536",
      "metacriticRating": "",
      "genres": "Action, Crime, Drama",
      "genreList": [
        {
          "key": "Action",
          "value": "Action"
        },
        {
          "key": "Crime",
          "value": "Crime"
        },
        {
          "key": "Drama",
          "value": "Drama"
        }
      ],
      "directors": "Obeli N. Krishna",
      "directorList": [
        {
          "id": "nm1953633",
          "name": "Obeli N. Krishna"
        }
      ],
      "stars": "Silambarasan Rajendar, Gautham Karthik, Priya Bhavani Shankar, Sayyeshaa Saigal",
      "starList": [
        {
          "id": "nm1167656",
          "name": "Silambarasan Rajendar"
        },
        {
          "id": "nm5221962",
          "name": "Gautham Karthik"
        },
        {
          "id": "nm9350574",
          "name": "Priya Bhavani Shankar"
        },
        {
          "id": "nm7548924",
          "name": "Sayyeshaa Saigal"
        }
      ]
    },
    {
      "id": "tt11396310",
      "title": "Viduthalai Part-1",
      "fullTitle": "Viduthalai Part-1 (2023)",
      "year": "2023",
      "releaseState": "31 Mar 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BNWJhYjYxZTYtOWY2OC00YTIwLWI0OTUtMDI2MDRkYzljMWRlXkEyXkFqcGdeQXVyMTU0ODI1NTA2._V1_Ratio0.6699_AL_.jpg",
      "runtimeMins": "150",
      "runtimeStr": "150 mins",
      "plot": "A police officer is recruited to capture the leader of a separatist group.",
      "contentRating": "",
      "imDbRating": "8.8",
      "imDbRatingCount": "1116",
      "metacriticRating": "",
      "genres": "Action, Crime, Drama",
      "genreList": [
        {
          "key": "Action",
          "value": "Action"
        },
        {
          "key": "Crime",
          "value": "Crime"
        },
        {
          "key": "Drama",
          "value": "Drama"
        }
      ],
      "directors": "Vetrimaaran",
      "directorList": [
        {
          "id": "nm4274575",
          "name": "Vetrimaaran"
        }
      ],
      "stars": "Soori, Vijay Sethupathi, Bhavani Sre, Chetan",
      "starList": [
        {
          "id": "nm4262344",
          "name": "Soori"
        },
        {
          "id": "nm4043111",
          "name": "Vijay Sethupathi"
        },
        {
          "id": "nm11424386",
          "name": "Bhavani Sre"
        },
        {
          "id": "nm4742589",
          "name": "Chetan"
        }
      ]
    },
    {
      "id": "tt24787322",
      "title": "Gurudev Hoysala",
      "fullTitle": "Gurudev Hoysala (2023)",
      "year": "2023",
      "releaseState": "30 Mar 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BZWZkODEwMjYtMDlhNS00NTY0LWI0ZDUtMjYyOWU3MzdjNGRkXkEyXkFqcGdeQXVyNjM0NDc1MzM@._V1_Ratio0.8038_AL_.jpg",
      "runtimeMins": "130",
      "runtimeStr": "130 mins",
      "plot": "An upright police officer, is transferred to Athani to investigate a case of a fellow missing officer. While working on the case, a young couple is brought to the station by one of his subordinates suspecting them of foul play.",
      "contentRating": "",
      "imDbRating": "9.3",
      "imDbRatingCount": "230",
      "metacriticRating": "",
      "genres": "Action, Crime, Drama",
      "genreList": [
        {
          "key": "Action",
          "value": "Action"
        },
        {
          "key": "Crime",
          "value": "Crime"
        },
        {
          "key": "Drama",
          "value": "Drama"
        }
      ],
      "directors": "Vijay Naagendra",
      "directorList": [
        {
          "id": "nm10395584",
          "name": "Vijay Naagendra"
        }
      ],
      "stars": "Dhananjaya, Amrutha Iyengar, Naveen Shankar, B.S. Avinash",
      "starList": [
        {
          "id": "nm5744564",
          "name": "Dhananjaya"
        },
        {
          "id": "nm11142564",
          "name": "Amrutha Iyengar"
        },
        {
          "id": "nm9329452",
          "name": "Naveen Shankar"
        },
        {
          "id": "nm10346134",
          "name": "B.S. Avinash"
        }
      ]
    },
    {
      "id": "tt22033936",
      "title": "National Theatre Live: Straight Line Crazy",
      "fullTitle": "National Theatre Live: Straight Line Crazy (2022)",
      "year": "2022",
      "releaseState": "21 Oct 2022",
      "image": "https://m.media-amazon.com/images/M/MV5BNjNiODgzYTAtNWYyYS00YTcxLTgwYWMtYjM4NDliODZkZmE0XkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_Ratio0.7081_AL_.jpg",
      "runtimeMins": "180",
      "runtimeStr": "180 mins",
      "plot": "Fiennes is brilliant portraying Robert Moses (1888 - 1981), a very powerful and charismatic urban planner, whose career spanned over 40 years. Early in his career, Moses claimed to want to ... See full summary",
      "contentRating": "",
      "imDbRating": "8.2",
      "imDbRatingCount": "54",
      "metacriticRating": "",
      "genres": "Drama",
      "genreList": [
        {
          "key": "Drama",
          "value": "Drama"
        }
      ],
      "directors": "Nicholas Hytner",
      "directorList": [
        {
          "id": "nm0405336",
          "name": "Nicholas Hytner"
        }
      ],
      "stars": "Alisha Bailey, David Bromley, Ralph Fiennes, Alana Maria",
      "starList": [
        {
          "id": "nm3593001",
          "name": "Alisha Bailey"
        },
        {
          "id": "nm8772394",
          "name": "David Bromley"
        },
        {
          "id": "nm0000146",
          "name": "Ralph Fiennes"
        },
        {
          "id": "nm2315606",
          "name": "Alana Maria"
        }
      ]
    },
    {
      "id": "tt27043683",
      "title": "Yaaran Diyan Poun Baaran",
      "fullTitle": "Yaaran Diyan Poun Baaran (2023)",
      "year": "2023",
      "releaseState": "30 Mar 2023",
      "image": "https://m.media-amazon.com/images/M/MV5BOTFhNzNlMGQtZWQwMC00MTc0LTgxMGEtNzMzNDIwM2ZhZDVhXkEyXkFqcGdeQXVyNDM2NjkyNDA@._V1_Ratio0.6890_AL_.jpg",
      "runtimeMins": "135",
      "runtimeStr": "135 mins",
      "plot": "A rib tickling comedy that takes you on an exciting journey of college life, friendships and young love.",
      "contentRating": "",
      "imDbRating": "0",
      "imDbRatingCount": "0",
      "metacriticRating": "",
      "genres": "Comedy",
      "genreList": [
        {
          "key": "Comedy",
          "value": "Comedy"
        }
      ],
      "directors": "Upasana Singh",
      "directorList": [
        {
          "id": "nm0802251",
          "name": "Upasana Singh"
        }
      ],
      "stars": "Nanak Singh, Swati Sharma, Harnaaz Sandhu, Upasana Singh",
      "starList": [
        {
          "id": "nm13949840",
          "name": "Nanak Singh"
        },
        {
          "id": "nm14627824",
          "name": "Swati Sharma"
        },
        {
          "id": "nm11082552",
          "name": "Harnaaz Sandhu"
        },
        {
          "id": "nm0802251",
          "name": "Upasana Singh"
        }
      ]
    }
  ],
  "errorMessage": ""
}
""";
