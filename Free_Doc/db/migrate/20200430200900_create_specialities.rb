class CreateSpecialities < ActiveRecord::Migration[5.2]
  def change
    create_table :specialities do |t|
      t.string :name_speciality

      t.timestamps
    end
    remove_column :doctors, :speciality, :string
  end
end