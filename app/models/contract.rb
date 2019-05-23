class Contract < ApplicationRecord
  belongs_to :user

  MISSION = ["Assassination", "Hostage taking", "Theft", "Torture", "Kidnapping"]

  mount_uploader :photo, PhotoUploader
end
