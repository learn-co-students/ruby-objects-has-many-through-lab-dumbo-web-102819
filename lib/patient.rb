class Patient

attr_reader :name

@@all = []

def initialize(name)
    @name = name
    @@all << self
end

def self.all
    @@all
end

def new_appointment(date, doctor)
    appointment = Appointment.new(date, self, doctor)

end

def appointments
    @appointments.map do |appointment|
    appointment.self 

end

def doctors
    @appointments.map do |appointment|
    appointment.doctor
end

