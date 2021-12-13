class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  has_one_attached :avatar
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
    validates_uniqueness_of :first_name
         
    validates :last_name, presence: true
    validates :first_name, presence: true
    validates :age, presence: true
    validates :favorite_sport, presence: true
end
