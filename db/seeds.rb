# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

systems = Career.create(name: "Ingenieria en sistemas de informacion")

cosme = User.create(email: "solicitant@ues.com", password: "password", first_name: "Cosme", last_name: "Fulanito", birth_date: "1980-06-08", career: systems)
homero = User.create(email: "applicant@ues.com", password: "password", first_name: "Homero", last_name: "Simpson", birth_date: "1960-04-10", career: systems)

frba = Regional.create(name: "Facultad regional buenos aires", short_name: "FRBA") 

medrano = Office.create(name: "Medrano", regional: frba)

carlono = Professor.create(first_name: "Carlos", last_name: "Lombardi")
condado = Professor.create(first_name: "Francisco", last_name: "Condado")

pdep = Subject.create(name: "Paradigmas de programacion", short_name: "PDEP", kind: Subject.kinds(:systems), career: systems)

carlono_course = Course.create(code: "K2010", period: Course.periods(:morning), professor: carlono, subject: pdep, office: medrano)
condado_course = Course.create(code: "K2011", period: Course.periods(:morning), professor: condado, subject: pdep, office: medrano)

solicitude = Solicitude.create(solicitant_comments: "Cosme es un verga que quiere ir con condado", applicant_comments: "Homero es un verga que quiere ir con lombardi", 
  solicitant: homero, applicant: cosme, origin_course: condado_course, wanted_course: carlono_course)
