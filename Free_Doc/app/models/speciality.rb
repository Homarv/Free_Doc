class Speciality < ApplicationRecord
    has_many :join_specialities
    has_many :doctors, through: :join_specialities
end
