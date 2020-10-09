# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pas = Pa.create([{ numero: 'Exemplo 1' }, { numero: 'Exemplo 2' }])
tcs = Tc.create([{ numero: 'Exemplo 1' }, { numero: 'Exemplo 2' }])
tacs = Tac.create([{ numero: 'Exemplo 1' }, { numero: 'Exemplo 2' }, { numero: 'Exemplo 3' }])

coordenadorias = Coordenadoria.create([{ descricao: 'Coordenadoria 1' }, { descricao: 'Coordenadoria 2' }])
areas = Area.create([{ descricao: 'Área 1', coordenadoria_id: 1 }, { descricao: 'Área 2', coordenadoria_id: 2 }])

tipos = Tipo.create([{ nome: 'Tipo 1' }, { nome: 'Tipo 2' }])
fases = Fase.create([{ nome: 'Ativa' }, { nome: 'Finalizada' }, { nome: 'Cancelada' }])

sistemas = Sistema.create([{ nome: 'Sistema 1' }, { nome: 'Sistema 2' }])

users = User.create(rf: '1234567', username: 'Admin', email: 'admin@admin.com', password: 'trocar', password_confirmation: 'trocar')
