class Doohickey < ActiveRecord::Base

  validates_presence_of :name
  validate :unique_name_validation

  attr_accessible :name

  def unique_name_validation
    other_doohickey = Doohickey.find_by_name(name)
    if other_doohickey
      errors.add(
        :name,
        "This name is already taken by <a href='/doohickey/#{other_doohickey.id}'>#{other_doohickey.name}</a>"
      )
    end
  end

end
