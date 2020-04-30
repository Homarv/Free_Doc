class Doctor < ApplicationRecord
    has_many :appointements
    has_many :patients, through: :appointements
    belongs_to :city
end
