class Professor < ActiveRecord::Base

  #
  # Fields
  #

  #first_name:string
  #last_name:string

  #
  # Relations
  #

  has_many :courses

end