class Patient

  attr_reader :name

  @@all =  [ ]

  def initialize(name)
    @name = name
  end


  def new_appointment(doctor, date)
    new_app = Appointment.new(self, doctor, date)
    new_app
  end


  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |app_object|
      app_object.patient == self
    end
  end

  def doctors
    self.appointments.map do |app_object|
      app_object.doctor
    end


  end





end
