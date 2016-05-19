# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  title      :string(256)      not null
#  flag       :boolean          not null
#

class Category < ActiveRecord::Base
end
