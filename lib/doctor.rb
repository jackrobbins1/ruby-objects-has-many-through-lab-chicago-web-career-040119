require "pry"

class Doctor
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

  def new_appointment(appt_patient, appt_date)
    Appointment.new(appt_date, appt_patient, self)
  end

  def appointments
    Appointment.all.select { |appt|
      appt.doctor == self
    }
  end

  def patients
    self.appointments.map { |appt|
      #binding.pry
      appt.patient
    }.uniq
  end

end
