class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :last_name
      t.string :postal_code
      t.string :country
      t.string :state
      t.string :municipality
      t.string :city
      t.string :colony
      t.string :street
      t.string :external_number
      t.string :internal_number

      t.timestamps
    end
  end
end
