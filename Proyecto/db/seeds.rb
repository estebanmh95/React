# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Bill.delete_all
  Edificio.delete_all
  Payment.delete_all
  Edificio.create([{name: "Salamanca"}, {name: "Tres Torres"}, {name: "Plaza Linares"}])
  Bill.create([{edificio_id: 1},{edificio_id: 1},{edificio_id: 2}, {edificio_id: 3}])
  Payment.create([
    {tipo: "tarjeta", fecha: "enero", bill_id: 1},
    {tipo: "tarjeta", fecha: "febrero", bill_id: 2},
    {tipo: "tarjeta", fecha: "marzo", bill_id: 3},
    {tipo: "efectivo", fecha: "enero", bill_id: 4}
    ])
