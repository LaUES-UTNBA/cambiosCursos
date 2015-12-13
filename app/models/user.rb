class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #
  # Fields
  #

  #email:string
  #password:string
  #first_name:string
  #last_name:string
  #birth_date:date

  #
  # Validations
  #

  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birth_date, presence: true
  validates :career, presence: true

  #
  # Relations
  #

  belongs_to :career
  has_many :solicitudes, foreign_key: "solicitant_id" #These are the ones the user created
  has_many :applications, class_name: "Solicitude", foreign_key: "applicant_id" #These are the ones the user applied to

  #
  # CanCanCan
  #
  
  delegate :can?, :cannot?, :authorize!, to: :ability

  #
  # Instance Methods
  #

  def ability
    @ability ||= Ability.new(self)
  end


end
