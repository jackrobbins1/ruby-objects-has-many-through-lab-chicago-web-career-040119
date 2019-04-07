require "pry"


class Appointment
  #class ///////////////
  @@all = []

  def self.all
    @@all
  end

  #instance ////////////
  attr_reader :date, :patient, :doctor
  #attr_accessor

  def initialize(date, patient, doctor)
    #class ///////////////
    @@all << self

    #instance ////////////
    @date = date
    @patient = patient
    @doctor = doctor
  end

end
