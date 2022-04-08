class Post < ApplicationRecord
    #title cannont be empty/falsy
    validates :title, presence: true
    
    # lenfth of content is at least 250
    validates :content, length: { minimum: 250 }
    #length of content is at most 250 
    validates :summary, length: {  maximum: 250 }
    #category is either fiction or non fiction c
    # validates :category, inclusion: { in: }
    validates :category, inclusion: { in: ['Fiction', 'Non-Fiction'] }

    validates :title, presence: false

end
