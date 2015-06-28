class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #
  # Fields
  #

  #email:string
  #first_name:string
  #last_name:string
  #birth_date:date

  #
  # Relations
  #

  belongs_to :career
  has_many :solicitudes, foreign_key: "solicitant_id" #These are the ones the user created
  has_many :applications, foreign_key: "applicant_id" #These are the ones the user applied to


end
