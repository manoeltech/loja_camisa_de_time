Company.create(
  name: "Chapéu de Palha",
  ownername: "Brazucas",
  cnpj: "07695045152",
  whatsapp: "61995990221",
  address: "Coremas - Cabo branco"
)

User.create!(
  name: "Admin",
  email: "admin@gmail.com",
  company_id: 1

)

Client.create!(
  name: "Cliente teste",
  company_id: 1
)
