# == Schema Information
#
# Table name: cats
#
#  id          :bigint(8)        not null, primary key
#  name        :string           not null
#  birth_date  :date             not null
#  color       :string
#  sex         :string(1)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cat < ApplicationRecord
  COLORS = %w(brown yellow white black calico orange)
  SEX = %w(M F)
  validates :sex, inclusion: SEX
  validates :color, inclusion: COLORS
  validates :name, :birth_date, presence: true

  has_many :cat_rental_requests,
  primary_key: :id,
  foreign_key: :cat_id,
  class_name: :CatRentalRequest,
  dependent: :destroy


  def age
    Time.now.to_s[0..3].to_i - birth_date.to_s[0..3].to_i
  end

end
