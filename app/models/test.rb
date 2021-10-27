class Test < ApplicationRecord

    validate :error_check

    def error_check
        if title.blank?
            errors[:base] << '検定名が未入力です'
        end

        if one.blank? and two.blank? and three.blank?
            errors[:base] << '値段が未入力です'
        end

        if person.blank?
            errors[:base] << '担当教員が未入力です'
        end
    end

end
