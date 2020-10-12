class School
    attr_reader :name

    def initialize(name, roster= {})
        @name = name
        @roster = roster
        
    end

    def roster
        @roster
    end

    def add_student(student, grade)
        if roster[grade] == nil
            roster[grade] = []
        end
        roster[grade] << student
    end

    def grade(grade)
        return roster[grade]
    end

    def sort
        return roster.each do |key, value|
            roster[key] = value.sort{ |a,b| a<=>b }
          end
        
    end
        
end