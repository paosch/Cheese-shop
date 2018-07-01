feature 'Confirmation message for customers' do
  scenario 'the customer can see how many blocks of cheese they get' do
    visit('/')
    expect(page).to have_content 'Today you can buy'
  end
end
