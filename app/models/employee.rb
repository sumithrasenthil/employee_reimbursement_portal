class Employee < ApplicationRecord
  belongs_to :department
  has_many :bills, dependent: :destroy
  validates :first_name, :last_name, :designation, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  enum designation: { junior: 0, senior: 1, manager: 2, director: 3 }
  
  def fullname
    "#{first_name} #{last_name}"
  end
end
