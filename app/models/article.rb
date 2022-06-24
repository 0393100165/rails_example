class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_many :reviews, dependent: :destroy
    validates :title, presence: true
    # validates :body, presence: true, length: { minimum: 10 }
    
    VALID_STATUSES = ['public', 'private', 'archived']

    # validates :status, inclusion: { in: VALID_STATUSES }
  
    def archived?
      status == 'archived'
    end
  end
  