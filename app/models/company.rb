class Company < ApplicationRecord
 has_many :employees
 has_many :projects
end