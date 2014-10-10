class Alphabet < ActiveRecord::Base
  belongs_to :course
  has_many :signs
end
