class Activity < ApplicationRecord
    has_and_belongs_to_many :users, :optional => true
    has_and_belongs_to_many :moods
end
