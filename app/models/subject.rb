class Subject < ActiveRecord::Base

  #
  # Fields
  #

  #name:string
  #type:string

  #
  # Relations
  #

  belongs_to :career
  has_many :courses

  #
  # Class Methods
  #

  def self.types
    {general: "homogeneas", systems: "sistemas", mechanic: "mecanica", electric: "electronica", civil: "civil", naval: "naval", quimic: "quimica"}
  end

end