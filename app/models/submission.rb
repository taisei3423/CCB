class Submission < ApplicationRecord

    validate :error_check

    def error_check
        if title.blank?
            errors[:base] << '提出物の名前が未入力です'
        end

        if year.blank?
            errors[:base] << '学年が未入力です'
        end
    end

end
