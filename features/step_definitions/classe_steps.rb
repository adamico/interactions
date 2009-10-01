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

Given /^I have ([0-9]+) classes$/ do |count|
  Classe.all.count.should == count.to_i
end

Then /^I should have ([0-9]+) classes$/ do |count|
  Classe.all.count.should == count.to_i
end

Given /^I have (.+) as interagents? names? for (.+)$/ do |i_names, c_name|
  classe = Classe.find_by_name!(c_name)
  i_names.split(', ').each do |i_name|
    classe.inter_classes.create!(:name => i_name)
  end
end
