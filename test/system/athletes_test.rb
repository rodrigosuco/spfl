require "application_system_test_case"

class AthletesTest < ApplicationSystemTestCase
  setup do
    @athlete = athletes(:one)
  end

  test "visiting the index" do
    visit athletes_url
    assert_selector "h1", text: "Athletes"
  end

  test "should create athlete" do
    visit athletes_url
    click_on "New athlete"

    fill_in "Nome", with: @athlete.nome
    fill_in "Numero", with: @athlete.numero
    fill_in "Posicao", with: @athlete.posicao
    fill_in "Tipo atleta", with: @athlete.tipo_atleta
    click_on "Create Athlete"

    assert_text "Athlete was successfully created"
    click_on "Back"
  end

  test "should update Athlete" do
    visit athlete_url(@athlete)
    click_on "Edit this athlete", match: :first

    fill_in "Nome", with: @athlete.nome
    fill_in "Numero", with: @athlete.numero
    fill_in "Posicao", with: @athlete.posicao
    fill_in "Tipo atleta", with: @athlete.tipo_atleta
    click_on "Update Athlete"

    assert_text "Athlete was successfully updated"
    click_on "Back"
  end

  test "should destroy Athlete" do
    visit athlete_url(@athlete)
    click_on "Destroy this athlete", match: :first

    assert_text "Athlete was successfully destroyed"
  end
end
