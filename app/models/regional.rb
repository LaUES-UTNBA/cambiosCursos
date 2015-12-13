class Regional < ActiveRecord::Base
  
  #
  # Fields
  #

  #name:string
  #short_name:string

  #
  # Validations
  #

  validates :name, presence: true
  validates :short_name, presence: true

  #
  # Relations
  #

  has_many :offices

end