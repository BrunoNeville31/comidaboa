require "application_system_test_case"

class AdmnistradorsTest < ApplicationSystemTestCase
  setup do
    @admnistrador = admnistradors(:one)
  end

  test "visiting the index" do
    visit admnistradors_url
    assert_selector "h1", text: "Admnistradors"
  end

  test "creating a Admnistrador" do
    visit admnistradors_url
    click_on "New Admnistrador"

    fill_in "Email", with: @admnistrador.email
    fill_in "Nome", with: @admnistrador.nome
    fill_in "Senha", with: @admnistrador.senha
    click_on "Create Admnistrador"

    assert_text "Admnistrador was successfully created"
    click_on "Back"
  end

  test "updating a Admnistrador" do
    visit admnistradors_url
    click_on "Edit", match: :first

    fill_in "Email", with: @admnistrador.email
    fill_in "Nome", with: @admnistrador.nome
    fill_in "Senha", with: @admnistrador.senha
    click_on "Update Admnistrador"

    assert_text "Admnistrador was successfully updated"
    click_on "Back"
  end

  test "destroying a Admnistrador" do
    visit admnistradors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Admnistrador was successfully destroyed"
  end
end
