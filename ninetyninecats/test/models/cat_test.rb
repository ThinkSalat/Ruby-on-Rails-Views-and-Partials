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

require 'test_helper'

class CatTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
