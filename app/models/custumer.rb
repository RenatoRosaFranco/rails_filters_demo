class Custumer < ApplicationRecord

  include Filterable

  scope :customer, ->(name) { where(name: name) }
  scope :company, ->(company) { where(company: company) }
  scope :email, ->(email) { where(email: email) }
end
