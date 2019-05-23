class Inquiry < ApplicationRecord
    #Railsではvalid?メソッドを実行するとバリデーションが実行されます。
    #バリデーションが通ればtrueを返し、引っかかればfalseを返します。
  validates :name, presence: true, length: { in: 1..160 }  # 1文字から160文字
  validates :email, presence: true
  validates :content, length: { maximum: 255 }  #255文字以下
end


# validates 
#空でないこと　validates :title, presence: true

#空であること  validates :login, absence: true

#booleanの場合  validates :completed, inclusion: { in:  [true, false] }

#チェックボックス validates :category, acceptance: true

#一致  validates :email, confirmation: true

#長さ
#validates :title,    length: { minimum: 1 }       # 「1文字以上」
#validates :title,    length: { maximum: 75 }      # 「75文字以下」
#validates :title,    length: { in: 1..75 }        # 「1文字以上75文字以下」
#validates :password, length: { is: 8 }            # 「8文字のみ」