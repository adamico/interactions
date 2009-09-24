Given /^I have principes named (.+)$/ do |names|
  names.split(', ').each do |name|
    Principe.create!(:name => name)
  end
end

Given /^I have (.+) as classe?s name?s for (.+)$/ do |cl_names, p_name|
  principe = Principe.find_by_name!(p_name)
  cl_names.split(', ').each do |cl_name|
    principe.classes.create!(:name => cl_name)
  end
end

Given /^I have no principes$/ do
  Principe.delete_all
end

Then /^I should have ([0-9]+) principe$/ do |count|
  Principe.count.should == count.to_i
end
