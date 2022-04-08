class Author < ApplicationRecord
    #validates name: cannont be empty/falsy
    validates  :name, presence: true

    #validate name is case-sensitive, why does this work? There must be a better way
    validates_uniqueness_of :name

    # phone number length is 10
    validates :phone_number, length: { is: 10 }

    
end
