# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

games = Game.create([{name: 'Galaga', description: 'A fixed shooter arcade game developed and published by Namco in Japan and published by Midway in North America in 1981. It is the sequel to Galaxian, released in 1979. The gameplay of Galaga puts the player in control of a spacecraft which is situated at the bottom of the screen. At the beginning of each stage, the area is empty, but over time, enemy aliens arrive in formation, and when all of the enemies arrive on screen, they come down at the player\'s ship in formations of one or more, and may either shoot it or collide with it. During the entire stage, the player may fire upon the enemies, and when all enemies are vanquished, the player will proceed to the next stage.' },
                      {name: 'Joust', description: 'An arcade game developed by Williams Electronics and released in 1982. While not the first game to feature two-player cooperative play, Joust was more successful than its predecessors and popularized the concept. The player uses a button and joystick to control a knight riding a flying ostrich. The object is to progress through levels by defeating groups of enemy knights riding buzzards.'},
                      {name: 'Galaga \'88', description: 'is a 1987 fixed shooter arcade game by Namco. It is the third sequel for Galaxian (following Galaga, and Gaplus). It features significantly improved graphics over the previous games in the series, including detailed backgrounds, larger enemies and greater ship details. Although it was well received, fewer cabinets of this game were produced than of Galaga and Gaplus. The game runs on Namco System 1 hardware.'},
                      {name: '', description: ''}
                    ])
user = User.create([{}])

group = Group.create([{}])
