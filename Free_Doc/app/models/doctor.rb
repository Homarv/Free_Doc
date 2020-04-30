class Doctor < ApplicationRecord
    has_many :appointements
    has_many :patients, through: :appointements
    belongs_to :city
    has_many :join_specialities
    has_many :specialities, through: :join_specialities
end
