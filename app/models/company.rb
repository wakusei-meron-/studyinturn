class Company < ActiveRecord::Base

  has_many :entries
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #devise :authentication_keys => [ :name]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
