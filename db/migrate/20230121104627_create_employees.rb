class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :employee_name
      t.belongs_to :company

      t.timestamps
    end
  end
end
