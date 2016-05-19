# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  address    :string(256)      not null
#  password   :string(256)      not null
#  image      :string(256)      not null
#  comment    :text(65535)      not null
#

class User < ActiveRecord::Base
end
