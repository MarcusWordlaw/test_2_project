# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'
Client.destroy_all
Employee.destroy_all
Property.destroy_all
Service.destroy_all


beyonce = Client.create(name: "Beyonce")
harry = Client.create(name: "Harry")
ben = Client.create(name: "Ben")

shaw = Property.create(name: "Shaw", address: "1343 jef land", zip_code: 20001, pool_size: 7500, pool_material: "vinyl" , pool_cover: false , client_id: beyonce.id)
gtown = Property.create(name: "George Town", address: "1343 M ST nw", zip_code: 20005, pool_size: 9500, pool_material: "plaster" , pool_cover: true, client_id: beyonce.id)
chinatown = Property.create(name: "Chinatown", address: "343 H st", zip_code: 20001, pool_size: 3500, pool_material: "plaster" , pool_cover: false , client_id: harry.id)
bethesda = Property.create(name: "Bethesda", address: "6565 Md lane", zip_code: 20331, pool_size: 10000, pool_material: "marble" , pool_cover: false , client_id: ben.id)

jay_z = Employee.create(name: "Sean Carter", title: "CEO" )
joe = Employee.create(name: "Joe Rogan", title: "Lowly Fighter" )

serv1 = Service.create(property_id: shaw.id, employee_id: jay_z.id, appointment: "march 13 1992 12:30 pm", service_cost: 75, materials_cost: 25, total: 100, paid: false, job_description: "had a lot of fun")
serv2 = Service.create(property_id: gtown.id, employee_id: jay_z.id, appointment: "march 13 1992 12:30 pm", service_cost: 70, materials_cost: 25, total: 95, paid: false, job_description: "had a lot")
serv3 = Service.create(property_id: chinatown.id, employee_id: joe.id, appointment: "march 13 1992 12:30 pm", service_cost: 80, materials_cost: 25, total: 105, paid: false, job_description: "had fun")
serv4 = Service.create(property_id: chinatown.id, employee_id: joe.id, appointment: "march 13 1992 12:30 pm", service_cost: 90, materials_cost: 25, total: 115, paid: false, job_description: "had")
serv5 = Service.create(property_id: bethesda.id, employee_id: joe.id, appointment: "march 13 1992 12:30 pm", service_cost: 70, materials_cost: 25, total: 95, paid: false, job_description: "had a lot")
serv6 = Service.create(property_id: bethesda.id , employee_id: jay_z.id, appointment: "march 13 1992 12:30 pm", service_cost: 75, materials_cost: 25, total: 100, paid: false, job_description: "lot")
