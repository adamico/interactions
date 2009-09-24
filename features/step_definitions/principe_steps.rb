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
