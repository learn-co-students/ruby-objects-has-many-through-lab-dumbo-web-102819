class Doctor 
    @@doctor_all = [] 

    attr_reader :name 
    
    def initialize(name)
        @name = name  
        @@doctor_all << self
    end 

    def self.all
        @@doctor_all
    end 

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end 

    def appointments 
        Appointment.all.select do |appointment_instances|
            self == appointment_instances.doctor 
        end 
    end 

    def patients 
        appointments.map do |my_appointments|
            my_appointments.patient 
        end
    end 


end 