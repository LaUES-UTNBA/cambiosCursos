class Solicitude < ActiveRecord::Base

  #
  # Fields
  #

  #solicitant_comments:text
  #applicant_comments:text

  #
  # Validations
  #

  validates :solicitant, presence: true
  validates :applicant, presence: true
  validates :origin_course, presence: true
  validates :wanted_course, presence: true

  #
  # Relations
  #  

  belongs_to :solicitant, class_name: "User"
  belongs_to :applicant, class_name: "User"
  belongs_to :origin_course, class_name: "Course"
  belongs_to :wanted_course, class_name: "Course"

end