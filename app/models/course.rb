class Course < ActiveRecord::Base

  #
  # Fields
  #

  #code:string
  #period:string

  #
  # Validations
  #

  validates :code, presence: true
  validates :period, presence: true
  validates :professor, presence: true
  validates :subject, presence: true
  validates :office, presence: true

  #
  # Relations
  #

  belongs_to :professor
  belongs_to :subject
  belongs_to :office
  has_many :solicitudes_to_leave, class_name: "Solicitude", foreign_key: "origin_course_id"
  has_many :solicitudes_to_transfer, class_name: "Solicitude", foreign_key: "wanted_course_id"

  #
  # Class Methods
  #

  def self.periods period
    periods = {morning: "mañana", evening: "tarde", night: "noche"}
    periods[period]
  end

end