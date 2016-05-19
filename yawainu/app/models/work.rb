# == Schema Information
#
# Table name: works
#
#  id         :integer          not null, primary key
#  start_date :date             not null
#  end_date   :date             not null
#  comment    :text(65535)      not null
#  flag       :boolean          not null
#

class Work < ActiveRecord::Base
end
