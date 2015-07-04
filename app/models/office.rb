class Office < ActiveRecord::Base

  #
  # Fields
  #

  #name:string

  #
  # Relations
  #

  has_many :courses

end