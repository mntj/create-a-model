require "rails_helper"

describe GuestbookEntry do
  describe "#body" do
    it "should return the entry's body" do
      entry_body = "Hello!"
      entry = GuestbookEntry.create(body: entry_body)

      expect(entry.body).to eq entry_body
    end
  end
end
