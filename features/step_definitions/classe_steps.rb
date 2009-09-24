Given /^I have classes named (.+)$/ do |names|
  names.split(', ').each do |name|
    Classe.create!(:name => name)
  end
end
