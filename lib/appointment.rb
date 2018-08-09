class Appointment

attr_reader :date, :patient
attr_accessor :doctor

@@all =  [ ]


def initialize(patient, doctor, date)
  @patient = patient
  @doctor = doctor
  @date = date
  @@all << self
end


def self.all
  @@all
end


end
