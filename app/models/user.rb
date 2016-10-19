class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  
def self.search(search)
  where(" :email ILIKE ? OR ingredients ILIKE ? OR cooking_instructions ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
end
end
