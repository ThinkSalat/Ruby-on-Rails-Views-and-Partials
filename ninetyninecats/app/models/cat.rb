class Cat < ApplicationRecord
  COLORS = %w(brown yellow white black calico orange)
  SEX = %w(M F)
  validates :sex, inclusion: SEX
  validates :color, inclusion: COLORS
  validates :name, :birth_date, presence: true

  def age
    Time.now.to_s[0..3].to_i - birth_date.to_s[0..3].to_i
  end

end
