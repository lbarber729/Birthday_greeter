feature 'Testing homepage' do
  scenario 'Testing homepage says  Hello' do
    visit('/')
    expect(page).to have_content 'Hello!'
  end

  scenario 'Homepage has a form' do
    visit('/')
    expect(page).to have_field('user_name')
    expect(page).to have_field('birthday_day')
    expect(page).to have_field('birthday_month')
  end
end
