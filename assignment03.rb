module Details
    attr_accessor :name, :age, :email, :contact, :gender, :consent, :speciality, :region, :status
end

class Patient
    include Details
    @@consented = 0
    @@not_consented = 0
    def addDetails(name,age,email,contact,gender,consent)
        if consent == "consented"
            @@consented = @@consented+1 
        elsif consent == "not_consented"
            @@not_consented = @@not_consented+1
        end
    end

    def self.consented_patients
        return @@consented
    end

    def self.unconsented_patients
        return @@not_consented
    end
   
    def self.consent_percentage
        percentage = ((@@consented.to_f)/(@@consented + @@not_consented).to_f)*100.0
        puts "Percentage = #{percentage}"
    end
        
    

    def eligible_for_trial
        
        if (gender == 'f' && age > 15) || (gender == 'm' && age > 12)
            return "Eligible for trial"
        else
            return "not eligible for trial"
        end
    end


end

Patient.new.addDetails("A",10,"a@a.com",9234567890,"m","consented")

Patient.new.addDetails("A1",12,"a1@a1.com",9434567890,"f","consented")

Patient.new.addDetails("A2",22,"a2@a2.com",9934567890,"f","not_consented")

Patient.new.addDetails("A3",72,"a3@a3.com",9834567890,"m","consented")

Patient.new.eligible_for_trial

puts  "consented_patients = #{Patient.consented_patients}"
puts "unconsented_patients = #{Patient.unconsented_patients}"
Patient.consent_percentage

# p.unconsented_patients
# p.consented_patients
# p.consent_percentage


class Clinician
    include Details

    def addDetails(name,age,speciality,region)
        @name = name
        @age = age 
        @speciality = speciality
        @region = region
       clinician_status(speciality,region)
    end
    def clinician_status(speciality,region)
        if @speciality.downcase == "dentist" && @region.downcase == "india"
            @status = "active"
        else
            @status = "inactive"
        end
        puts "Details od Clinician = \n Name :#{name}, Age :#{age}, Speciality :#{speciality},Region :#{region}
        Status :#{status}"
    end
end

c = Clinician.new
c.addDetails("Putul",23,"Dentist","India")
