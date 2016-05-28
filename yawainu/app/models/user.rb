# == Schema Information
#
# Table name: works
#
#  id               :integer          not null, primary key
#  email            :string           not null
#  title            :string           not null
#  comment          :text(65535)      not null
#  main_color       :string           not null
#  sub_color        :string           not null
#  crypted_password :string
#  salt             :string
#

class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_one :cover, dependent: :destroy
  has_one :display, dependent: :destroy
  has_many :works, dependent: :destroy
  has_many :categories, dependent: :destroy

  validates :password, length: { minimum: 6}
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true

  #mount_uploader :image, ImageUploader
end