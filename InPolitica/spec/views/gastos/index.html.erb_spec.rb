require 'rails_helper'

RSpec.describe "gastos/index", type: :view do
  before(:each) do
    assign(:gastos, [
      Gasto.create!(
        :titulo => "Titulo",
        :informacao => "MyText",
        :valor => 2.5,
        :deputado => nil
      ),
      Gasto.create!(
        :titulo => "Titulo",
        :informacao => "MyText",
        :valor => 2.5,
        :deputado => nil
      )
    ])
  end

  it "renders a list of gastos" do
    render
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
