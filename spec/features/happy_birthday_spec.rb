feature 'If date is birthday it displays HAPPY BIRTHDAY' do
  scenario 'Page says HAPPY BIRTHDAY' do
    visit('/')
    fill_in :user_name, with: "Jane"
    select "19", :from => "Day:"
    select "June", :from => "Month:"
    click_button "Submit"
    expect(page).to have_content '??? days until your Birthday'
  end
end
