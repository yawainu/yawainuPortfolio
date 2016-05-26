# == Schema Information
#
# Table name: galleries
#
#  id         :integer          not null, primary key
#  image      :string(256)      not null
#  title      :string(256)      not null
#  comment    :text(65535)      not null
#  flag       :boolean          not null
#

class Gallery < ActiveRecord::Base
  belongs_to :category
end
