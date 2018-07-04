feature 'Confirmation message for customers' do
  # scenario 'the customer can see how many blocks of cheese they get' do
  #   WebMock.allow_net_connect!
  #   visit('/')
  #   expect(page).to have_content 'Today you can buy'
  # end
  scenario 'the page shows two flags' do
    WebMock.allow_net_connect!
    visit('/')
    expect(page).to have_content 'in France'
  end
end
