require 'rails_helper'

RSpec.describe "partidos/index", type: :view do
  before(:each) do
    assign(:partidos, [
      Partido.create!(
        :nome => "Nome",
        :total_gasto => 2.5
      ),
      Partido.create!(
        :nome => "Nome",
        :total_gasto => 2.5
      )
    ])
  end

  it "renders a list of partidos" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
  end
end
