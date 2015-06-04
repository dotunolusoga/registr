class Student < ActiveRecord::Base

  has_many :attendances

  validates :name, presence: true,
                   length: { minimum: 3,
                              too_short: "is too short (minimum is 3 characters)"
                           },
                   uniqueness: true
  default_scope -> { order(:name) }

end
