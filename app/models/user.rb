class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, presence: true
  validates :email, presence: true
  
  
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable,
         invite_for: 24.hours
         
  
  has_many :topics
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source:'topic'
  has_many :memory_topics, through: :memories, source:'topic'
  has_many :memories
  has_many :comments
  

end
