# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Sensor.create!([
  {name: "Sensor 1", description: "moisture ", model: "Y-161"},
  {name: "Sensor 2", description: "moisture", model: "Y-161"}
])
Reading.create!([
  {sensor_id: 1, value: 50, created_at: Time.now},
  {sensor_id: 1,value: 55, created_at: Time.now+2},
  {sensor_id: 1,value: 60, created_at: Time.now+3},
  {sensor_id: 1,value: 65, created_at: Time.now+4},
  {sensor_id: 1,value: 70, created_at: Time.now+5},
  {sensor_id: 1,value: 75, created_at: Time.now+6},
  {sensor_id: 1,value: 80, created_at: Time.now+7},
  {sensor_id: 1,value: 85, created_at: Time.now+8},
  {sensor_id: 1,value: 90, created_at: Time.now+9},
  {sensor_id: 1,value: 95, created_at: Time.now+10},
  {sensor_id: 2, value: 30, created_at: Time.now},
  {sensor_id: 2, value: 29, created_at: Time.now+2},
  {sensor_id: 2, value: 29, created_at: Time.now+3},
  {sensor_id: 2, value: 28, created_at: Time.now+4},
  {sensor_id: 2, value: 20, created_at: Time.now+5},
  {sensor_id: 2, value: 30, created_at: Time.now+6},
  {sensor_id: 2, value: 31, created_at: Time.now+7},
  {sensor_id: 2, value: 31, created_at: Time.now+8},
  {sensor_id: 2, value: 32, created_at: Time.now+9}
])
