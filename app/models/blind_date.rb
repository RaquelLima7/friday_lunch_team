class BlindDate < ApplicationRecord
  validates :event, presence: true
  validate :date_check, on: %i[create], if: :event

  private
  def date_check
    errors.add(:event, ' can not be an earlier date.') if event < Time.now
  end
end
