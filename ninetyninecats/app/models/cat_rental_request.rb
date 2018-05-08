# == Schema Information
#
# Table name: cat_rental_requests
#
#  id         :bigint(8)        not null, primary key
#  cat_id     :integer          not null
#  end_date   :date             not null
#  start_date :date             not null
#  status     :string           default("pending")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CatRentalRequest < ApplicationRecord
  validates :status, presence: true, inclusion: ['approved','denied','pending']
  validates :start_date, :end_date, presence: true
  validate :does_not_overlap_approved_request

  belongs_to :cat,
  primary_key: :id,
  foreign_key: :cat_id,
  class_name: :Cat

  def overlapping_requests
    CatRentalRequest.where("cat_id = ?",cat_id).where.not("end_date < ? or start_date > ?",start_date, end_date)
  end

  def overlapping_approved_requests
    overlapping_requests.where( status: 'approved')
  end


  def does_not_overlap_approved_request
    unless overlapping_approved_requests.empty?
      errors[:date_range] << "range overlaps with other approved requests"
    end
  end

end
