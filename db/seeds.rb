Company.create(
  name: "Chapéu de Palha",
  ownername: "Brazucas",
  cnpj: "07695045152",
  whatsapp: "61995990221",
  address: "Coremas - Cabo branco"
)


Client.create!(
  name: "Cliente teste",
  company_id: 1
)
