class Appointment

    attr_reader :date
    attr_accessor :doctor, :patient

    @@all = []

    def initialize(date, patient, doctor)
        @patient = patient
        @doctor = doctor
        @date = date

        @@all << self
    end

    def self.all
        @@all
    end
end