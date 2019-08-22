class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :artwork

  validates :status, inclusion: { in: ["pending", "accepted", "declined"] }
  validates :start_date, :end_date, presence: true
  validate :end_date_after_start_date

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    errors.add(:end_date, "Choisir une date valide svp.") if end_date < start_date
  end
end
