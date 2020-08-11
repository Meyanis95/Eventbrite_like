class Attendance < ApplicationRecord
  after_create :confirmation_email_send
  belongs_to :user
  belongs_to :event

  def confirmation_email_send
    AttendanceMailer.confirmation_email(self).deliver_now
  end

end
