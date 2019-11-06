class Patient 
    @@patient_all = []

    attr_reader :name 

    def initialize(name)
        @name = name
        @@patient_all << self  
    end 

    def self.all 
        @@patient_all
    end
    
    def new_appointment(doctor, date) 
        Appointment.new(date, self, doctor)
    end
    
    def appointments 
        Appointment.all.select do |appointment_instances| 
            self == appointment_instances.patient 
        end 
    end 

    def doctors 
        appointments.map do |my_appointments|
            my_appointments.doctor 
        end 
    end

end 