require 'rails_helper'

RSpec.describe "gastos/show", type: :view do
  before(:each) do
    @gasto = assign(:gasto, Gasto.create!(
      :titulo => "Titulo",
      :informacao => "MyText",
      :valor => 2.5,
      :deputado => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Titulo/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(//)
  end
end
