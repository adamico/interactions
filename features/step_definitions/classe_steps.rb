Given /^I have classes named (.+)$/ do |names|
  names.split(', ').each do |name|
    Classe.create!(:name => name)
  end
end

Given /^a classe named (.+)$/ do |name|
  @classe = Classe.create!(:name => name)
end

Given /^I have no classes$/ do
  Classe.destroy_all
end

Then /^I should have 1 classes$/ do
  Classe.all.count.should == 1
end

Given /^I have (.+) as interagents? names? for (.+)$/ do |i_names, c_name|
  classe = Classe.find_by_name!(c_name)
  i_names.split(', ').each do |i_name|
    classe.inter_classes.create!(:name => i_name)
  end
end
