Given /^I have classes named (.+)$/ do |names|
  names.split(', ').each do |name|
    Classe.create!(:name => name)
  end
end

Given /^a classe named (.+)$/ do |name|
  @classe = Classe.create!(:name => name)
end
