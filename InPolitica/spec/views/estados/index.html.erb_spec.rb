require 'rails_helper'

RSpec.describe "estados/index", type: :view do
  before(:each) do
    assign(:estados, [
      Estado.create!(
        :nome => "Nome",
        :total_gasto => 2.5
      ),
      Estado.create!(
        :nome => "Nome",
        :total_gasto => 2.5
      )
    ])
  end

  it "renders a list of estados" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
  end
end
