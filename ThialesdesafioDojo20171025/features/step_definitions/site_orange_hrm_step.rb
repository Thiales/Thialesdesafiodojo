Dado("que estou logado no site Orangehrmlive") do
  visit 'http://opensource.demo.orangehrmlive.com/'
  fill_in('txtUsername', :with => 'admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')
end

Quando("faço novo cadastro de funcionario") do
  find(:xpath, '//*[@id="menu_pim_viewPimModule"]/b').click
  click_link('menu_pim_addEmployee')
  fill_in('firstName', :with => 'Thiales')
  fill_in('middleName', :with => 'Douglas')
  fill_in('lastName', :with => 'da Silva')
  click_button('btnSave')
end

Entao("funcionario cadastrado") do
  assert_text('Thiales Douglas da Silva')
end

Dado("funcionario esteja cadastrado") do
  visit 'http://opensource.demo.orangehrmlive.com/'
  fill_in('txtUsername', :with => 'admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')
end

Quando("edito os dados do funcionario") do
  find(:xpath, '//*[@id="menu_pim_viewPimModule"]/b').click
  click_link('menu_pim_viewEmployeeList')
  click_link('Thiales Douglas')
  click_button('btnSave')
  fill_in('personal_txtEmpFirstName', :with => 'Douglas')
  fill_in('personal_txtEmpMiddleName', :with => 'Thiales')
  choose('personal_optGender_1').click
  find('#personal_cmbNation').find('option[value="26"]').select_option
  find('#personal_cmbMarital').find('option[value="Single"]').select_option
  fill_in('personal_DOB', :with => '1992-05-12')
  click_button('btnSave')
end

Entao("dados do funcionario sao alterados") do
  assert_text('Douglas Thiales da Silva')
end