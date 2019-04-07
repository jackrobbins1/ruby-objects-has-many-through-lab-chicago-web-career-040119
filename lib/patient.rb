require "pry"


class Patient
  #class ///////////////
  @@all = []

  def self.all
    @@all
  end

  #instance ////////////
  attr_reader :name

  def initialize(name)
    #class ///////////////
    @@all << self

    #instance ////////////
    @name = name
  end

  def new_appointment(appt_doctor, appt_date)
    Appointment.new(appt_date, self, appt_doctor)
  end

  def appointments
    Appointment.all.select { |appt|
      appt.patient == self
    }
  end

  def doctors
    self.appointments.map { |appt|
      appt.doctor
    }.uniq
  end

end
