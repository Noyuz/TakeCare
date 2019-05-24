class Contract < ApplicationRecord
  belongs_to :user
  has_many :bookings

  MISSION = ["Assassination", "Hostage taking", "Theft", "Torture", "Kidnapping", "Bodyguard"]

  mount_uploader :photo, PhotoUploader
end
