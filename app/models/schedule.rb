class Schedule < ApplicationRecord

    validate :error_check

    def error_check
        
        if year.blank?
            errors[:base] << '学年が未入力です'
        end
    end

end
