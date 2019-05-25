# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bill.delete_all
Edificio.delete_all

Edificio.create([{name: "Salamanca"}, {name: "Tres Torres"}, {name: "Plaza Linares"}])
Bill.create([
  {edificio_id: 13, ptype: "tarjeta", pdate: "enero"},
  {edificio_id: 13, ptype: "transferencia", pdate: "febrero"},
  { edificio_id: 14, ptype: "tarjeta", pdate: "marzo"},
  { edificio_id: 15, ptype: "efectivo", pdate: "enero"}
  ])
