# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  quantify    :integer
#  size        :integer
#  status      :boolean          default(TRUE)
#  value       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#  company_id  :bigint           not null
#
# Indexes
#
#  index_products_on_category_id  (category_id)
#  index_products_on_company_id   (company_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (company_id => companies.id)
#
class Product < ApplicationRecord
  belongs_to :company
  belongs_to :category, optional: true

  has_one_attached :product_image

  validates :name, :quantify, :status, presence: true
  validates :value, presence: true, numericality: { greater_than: 0 }
end
