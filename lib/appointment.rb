class Appointment
    @@appointment_all = []

    attr_reader :patient, :doctor 

def initialize(date, patient, doctor)
    @date = date 
    @doctor = doctor
    @patient = patient 
    @@appointment_all << self 
end 

def self.all 
    @@appointment_all
end 

end 