# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Agent.create([ { name: 'john', code: 'JO-12312', skills: ['fighting','running'] }, { name: 'smith', code: 'SM-12312', skills: ['fighting','shooting'] } ])

Sentinel.create([ { name: 'rojarous', code: 'RO-12312', group: 'A', skills: ['hacking','injecting'] }, { name: 'lezarus', code: 'SM-12312', group: 'A', skills: ['nicking','shooting'] } ]) 
