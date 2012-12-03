class Model < ActiveRecord::Base
  before_update :disallow_bob

  def disallow_bob
  	return false if model.name == "bob"
  end
end

class ModelObserver < ActiveRecord::Observer
  def before_update(model)
    return false if model.name == "mary"
  end
end

m = Model.create(:name => "bla bla bla")

m.update_attributes(:name => "bob")
#false -- name will still be "whatever" in database

m.update_attributes(:name => "mary")
#true -- name will be "mary" in database
