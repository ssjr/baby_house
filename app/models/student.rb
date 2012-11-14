class Student < ActiveRecord::Base
  has_many :parentages
  has_many :parents, through: :parentages
  has_many :attendances
  has_many :teams, through: :attendances

  attr_accessible :birthdate, :name, :parent_ids
  validates :name, presence: true
end
