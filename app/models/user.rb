class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :prototypes
  has_many :comments, dependent: :destroy
  
  validates :user_name, presence: true
  validates :profile, presence: true
  validates :affiliation, presence: true
  validates :position, presence: true
    
end