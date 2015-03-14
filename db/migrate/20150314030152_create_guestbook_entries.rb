class CreateGuestbookEntries < ActiveRecord::Migration
  def change
    create_table :guestbook_entries do |t|
      t.string :body

      t.timestamps
    end
  end
end
