class User < ApplicationRecord
    def IsTeacher?
        schoolyear == 0
    end
end
