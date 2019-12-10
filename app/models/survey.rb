class Survey < ApplicationRecord
    has_many :questions, dependent: :destroy
    has_many :answers, through: :questions, dependent: :destroy
    accepts_nested_attributes_for :questions, allow_destroy: :true, reject_if: proc { |att| att['content'].blank? }
end
