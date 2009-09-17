Given /^I have principes named (.+)$/ do |names|
  names.split(', ').each do |name|
    Principe.create!(:name => name)
  end
end
