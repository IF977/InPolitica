require 'rails_helper'

RSpec.describe "partidos/show", type: :view do
  before(:each) do
    @partido = assign(:partido, Partido.create!(
      :nome => "Nome",
      :total_gasto => 2.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/2.5/)
  end
end
