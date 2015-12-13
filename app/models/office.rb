class Office < ActiveRecord::Base

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

  belongs_to :regional
  has_many :courses

end