# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# PerfumeTypes

PerfumeType.create(name: "Hombre")
PerfumeType.create(name: "Mujer")
PerfumeType.create(name: "Esencias")

# BottleTypes

BottleType.create(name: "Hombre")
BottleType.create(name: "Mujer")
BottleType.create(name: "Niños")

# FamilyTypes

FamilyType.create(name: "Familia 1")
FamilyType.create(name: "Familia 2")
FamilyType.create(name: "Familia 3")