class User < ApplicationRecord
  validates :user_name, presence: true, uniqueness: { case_sensitive: false}

  has_many :responses,
    class_name: :Response,
    primary_key: :id,
    foreign_key: :user_id

  has_many :authored_polls,
    class_name: :Poll,
    primary_key: :id,
    foreign_key: :author_id

end
