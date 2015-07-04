class Career < ActiveRecord::Base

  #
  # Fields
  #

  #name:string

  #
  # Relations
  #

  has_many :users
  has_many :subjects

end