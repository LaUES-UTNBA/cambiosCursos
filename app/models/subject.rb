class Subject < ActiveRecord::Base

  #
  # Fields
  #

  #name:string
  #short_name:string
  #kind:string

  #
  # Validations
  #

  validates :name, presence: true
  validates :kind, presence: true
  validates :career, presence: true, unless: :general?

  #
  # Relations
  #

  belongs_to :career
  has_many :courses

  #
  # Class Methods
  #

  def self.kinds(kind)
    subject_kinds = {general: "homogeneas", systems: "sistemas", mechanic: "mecanica", electric: "electronica", civil: "civil", naval: "naval", quimic: "quimica"}
    subject_kinds[kind]
  end

  #
  # Instance Methods
  #

  def general?
    self.kind == self.class.kinds(:general)
  end

end