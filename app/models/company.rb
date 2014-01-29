# -*- coding: utf-8 -*-
class Company < ActiveRecord::Base

  has_many :entries
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #devise :authentication_keys => [ :name]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #入力値の検証(validate)
  validates :name,
    :presence => true,
    :length   => { :maximum => 32 }
  validates :name_a,
    :presence => true,
    :length   => { :maximum => 32 }
  validates :top,
    :presence => true,
    :length   => { :maximum => 32 }
  validates :tantou,
    :presence => true,
    :length   => { :maximum => 32 }
  validates :tantou_a,
    :presence => true,
    :length   => { :maximum => 32 }
  validates :address1,
    :presence => true
  validates :address2,
    :presence => true
  validates :address3,
    :presence => true
  validates :tel,
    :presence => true
  validates :url,
    :presence => true
  validates :agreement,
    :acceptance => true
end
