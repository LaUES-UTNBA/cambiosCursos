class Career < ActiveRecord::Base

  #
  # Fields
  #

  #name:string

  #
  # Validations
  #

  validates :name, presence: true

  #
  # Relations
  #

  has_many :users
  has_many :subjects

end