require "pry"
class Patient

        attr_accessor :name

        @@all = []

    def initialize (name)
        @name = name
        @@all << self

    end ###initialize

    def self.all
        @@all
    
    end ## all


    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)

    end ## new appointment

    def appointments
        Appointment.all.select {|appointment| appointment.patient == self}

    end ### appointments

    def doctors
        appointments.map {|appointment| appointment.doctor}   

    end ## doctors


end ## patient
