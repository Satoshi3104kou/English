class Word < ApplicationRecord

  validates :letter, :meaning, :engineer, presence: true
  validates :letter, uniqueness: true
  
  belongs_to :user

  def self.search(search)
    return Word.all unless search
    Word.where(['letter LIKE ?', "%#{search}%"])

   
  end

end
