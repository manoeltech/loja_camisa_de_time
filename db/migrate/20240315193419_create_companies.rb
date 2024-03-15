class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :ownername
      t.string :cnpj
      t.string :whatsapp
      t.string :address

      t.timestamps
    end
  end
end
