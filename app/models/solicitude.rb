class Solicitude < ActiveRecord::Base

  #
  # Fields
  #

  #comments:text

  #
  # Relations
  #  

  belongs_to :solicitant, class_name: "User"
  belongs_to :applicant, class_name: "User"
  belongs_to :course

end