class Professor < ActiveRecord::Base

  #
  # Fields
  #

  #first_name:string
  #last_name:string

  #
  # Validations
  #

  validates :first_name, presence: true
  validates :last_name, presence: true

  #
  # Relations
  #

  has_many :courses

end