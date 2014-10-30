require "rails_helper"

describe Page do
  describe "#name" do
    it "should return the page's name" do
      page_name = "Welcome"
      page = Page.create(name: page_name)

      expect(page.name).to eq page_name
    end
  end

  describe "Validations" do
    it "should validate uniquness of name" do
      page_name = "Welcome"
      first_page = Page.create(name: page_name)
      second_page = Page.new(name: page_name)

      expect(first_page).to be_persisted
      expect(second_page).not_to be_valid
    end
  end
end
