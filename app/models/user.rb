class User < ApplicationRecord

  enum status: {active: 0, inactive: 1}

  validates :name, presence: true
  validates :email, presence: true, :uniqueness => { :case_sensitive => false}, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ , message: "invalid email" }
  validates :phone, presence: true
  validates :status, presence: true

end
