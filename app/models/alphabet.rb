class Alphabet < ActiveRecord::Base
  belongs_to :course, :inverse_of => :alphabet
  has_many :signs
end
