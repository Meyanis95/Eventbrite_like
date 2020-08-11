class AttendanceMailer < ApplicationMailer
  default from: 'yanis_m@hotmail.fr'
 
  def confirmation_email(attendance)
    @attendance = attendance
    @url  = 'http://monsite.fr/login' 
    mail(to: @attendance.user.email, subject: 'Participation confirmée') 
  end
end
