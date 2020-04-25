class User < ApplicationRecord
    before_save { self.email = email.downcase } # Foo@ExAMPle.COm 문자를 foo@example.com 로 변환하기
    validates :name, presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false } # 대문자로동일한 이메일이 들어왔을때 걸러내는 코드

    has_secure_password 
    # 안전하게 해시화된 비밀번호를, 데이터베이스 내부의 password_digest 라고 하는 속성에 저장할 수 있게 됩니다.
    # 2개의 쌍으로, 가상의 속성 (password 와 password_confirmation) 을 사용할 수 있게 됩니다. 또한 존재성과, 값이 일치하는지의 검증이 추가됩니다.
    # authenticate 메소드를 사용할 수 있게 됩니다. (파라미터의 문자열이 비밀번호와 일치하면 User 오브젝트를 리턴하고, 그렇지 않으면 false 를 리턴하는 메소드`)
end
