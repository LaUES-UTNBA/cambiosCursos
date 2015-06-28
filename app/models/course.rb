class Course < ActiveRecord::Base

  #
  # Fields
  #

  #code:string
  #period:string

  #
  # Relations
  #

  belongs_to :professor
  belongs_to :subject
  belongs_to :office
  has_many :solicitudes

  #
  # Class Methods
  #

  def self.PERIODS
    {morning: "mañana", evening: "tarde", night: "noche"}
  end

end