class User < ActiveRecord::Base
  ROLES = %w[students teachers admins]

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :role, :password, :password_confirmation, :remember_me

  has_many :answers

  validates_presence_of :name
  validates_presence_of :role

  def is?(base_role)
    ROLES.index(base_role.to_s) <= ROLES.index(role || 'students')
  end

  def role?(base_role)
    role == base_role.to_s
  end
end
