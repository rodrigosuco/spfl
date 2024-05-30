require "application_system_test_case"

class TeamsTest < ApplicationSystemTestCase
  setup do
    @team = teams(:one)
  end

  test "visiting the index" do
    visit teams_url
    assert_selector "h1", text: "Teams"
  end

  test "should create team" do
    visit teams_url
    click_on "New team"

    fill_in "Athletes", with: @team.athletes_id
    fill_in "Endereco", with: @team.endereco
    fill_in "Historia", with: @team.historia
    fill_in "Infos", with: @team.infos
    fill_in "Nome", with: @team.nome
    fill_in "Titulo", with: @team.titulo
    fill_in "Titulo2", with: @team.titulo2
    fill_in "Titulo3", with: @team.titulo3
    fill_in "Titulo4", with: @team.titulo4
    fill_in "Titulo5", with: @team.titulo5
    click_on "Create Team"

    assert_text "Team was successfully created"
    click_on "Back"
  end

  test "should update Team" do
    visit team_url(@team)
    click_on "Edit this team", match: :first

    fill_in "Athletes", with: @team.athletes_id
    fill_in "Endereco", with: @team.endereco
    fill_in "Historia", with: @team.historia
    fill_in "Infos", with: @team.infos
    fill_in "Nome", with: @team.nome
    fill_in "Titulo", with: @team.titulo
    fill_in "Titulo2", with: @team.titulo2
    fill_in "Titulo3", with: @team.titulo3
    fill_in "Titulo4", with: @team.titulo4
    fill_in "Titulo5", with: @team.titulo5
    click_on "Update Team"

    assert_text "Team was successfully updated"
    click_on "Back"
  end

  test "should destroy Team" do
    visit team_url(@team)
    click_on "Destroy this team", match: :first

    assert_text "Team was successfully destroyed"
  end
end
