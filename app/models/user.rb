class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :user_answers, foreign_key: "user_id"
  has_many :attempts, foreign_key: "user_id"
  has_many :attempts
end
