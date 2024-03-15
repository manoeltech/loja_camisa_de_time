# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  quantify    :integer
#  value       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  client_id   :bigint           not null
#  company_id  :bigint           not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_products_on_client_id   (client_id)
#  index_products_on_company_id  (company_id)
#  index_products_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (client_id => clients.id)
#  fk_rails_...  (company_id => companies.id)
#  fk_rails_...  (user_id => users.id)
#
class Product < ApplicationRecord
  belongs_to :company
  belongs_to :user
  belongs_to :client
end
