-----------------------------------------------------Univercity--------------------------------------------------------
class Univercity
  include Mongoid::Document
  
  field :title, type: String, default: nil

  has_many :faculties, dependent: :destroy
  has_many :students, dependent: :destroy

end
#-----------------------------------------------------Faculty--------------------------------------------------------
class Faculty
  include Mongoid::Document

  field :title, type: String, default: nil

  belongs_to :institution
  has_many :students, dependent: :destroy

end
#-----------------------------------------------------Student--------------------------------------------------------
class Student
  include Mongoid::Document

  field :full_name, type: String, default: nil
  field :status, type: Integer, default: nil

  belongs_to :faculty
  belongs_to :institution

  def change_status(status)
    self.update_attributes(status: status)
  end

  def graduated?
    self.status == 1
  end

  def academ_vacation?
    self.status == 2
  end

  def expelded?
    self.status == 3
  end
end
#-----------------------------------------------------Routes--------------------------------------------------------
Institution::Application.routes.draw do

  root to: "univercities#index"

  resources :univercities do
    resources :faculties do
      resources :students
    end
  end

end
#------------------------------------------------------------------------------------------------------------------
