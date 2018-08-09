
class Doctor

  attr_reader :name

  @@all = [ ]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    new_app = Appointment.new(patient, self, date)
    new_app
  end

  def appointments
    Appointment.all.select do |app_object|
      app_object.doctor == self
    end
  end

  def patients
    self.appointments.map do |app_object|
      app_object.patient
    end
  end





end
