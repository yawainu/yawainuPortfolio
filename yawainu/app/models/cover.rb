# == Schema Information
#
# Table name: covers
#
#  id         :integer          not null, primary key
#  image      :string(256)      not null
#  flag       :boolean          not null
#

class Cover < ActiveRecord::Base
end
