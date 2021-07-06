require "pry"
class Doctor
    attr_accessor :name

    @@all = []

    def initialize (name)
        @name = name 
    
        @@all << self
    end ##initialize 


    def self.all
          @@all
    end ##all

    def appointments
            Appointment.all.select do |appointment|
                appointment.doctor == self
            end ## select
    end ## appointments

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end ### new appointment

    def patients
    
        appointments.map do |appointment|
    
            appointment.patient
        end #map

    end ### patients 

end ### doctor class
