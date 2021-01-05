require 'rails_helper'
require 'support/mock_data'

RSpec.describe "checkouts/index.html.erb", type: :view do
  include_context 'mock_data'

  before(:each) do
    assign(:transactions, [mock_transaction])
  end

  it "renders the Transaction header" do
    render
    expect(rendered).to match /transactions/
  end

  it "includes the transaction id" do
    render
    expect(rendered).to match /my_id/
  end

  it "includes the 'New checkout page' link" do
    render
    expect(rendered).to match /New transaction/
    expect(rendered).to match /checkouts\/new/
  end
end
