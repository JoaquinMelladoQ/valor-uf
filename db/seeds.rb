# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

CSV.open('uf_2019.csv', {col_sep: "\t"}).readlines.each do |j|
  Uf.create(
    date: j[0],
    value: j[1].to_i
  )
end
