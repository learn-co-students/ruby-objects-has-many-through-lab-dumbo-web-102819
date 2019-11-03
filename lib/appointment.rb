class Appointment

  attr_reader :patient, :date, :doctor

  @@all = []

  def self.all
    @@all
  end

  def initialize (date, patient, doctor)
    @patient = patient
    @date = date
    @doctor = doctor

    @@all << self
  end
end
