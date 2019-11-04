class Doctor 

    attr_reader :name 
    
    @@all = []

    def initialize(name)
        @name = name
        @appointments = []
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, patient)
        appointment = Appointments.new(date, patient, self)
        @appointments << appointment

    end

    
    end

    def appointments
        @appointments.all select do |appointment|
        appointment.self 
    
    end

    def patients
        @appointments.map do |appointment|
        appointment.patient
    end

end