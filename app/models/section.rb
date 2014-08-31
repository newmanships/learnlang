class Section < ActiveRecord::Base
  belongs_to :course
  has_many :lessons, foreign_key: "section_id"
end
