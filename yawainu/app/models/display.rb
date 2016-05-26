# == Schema Information
#
# Table name: disprays
#
#  id         :integer          not null, primary key
#  cover      :boolean          not null
#  gallery    :boolean          not null
#  work       :boolean          not null
#  contact    :boolean          not null
#

class Display < ActiveRecord::Base
  belongs_to :user
end
