require 'spec_helper'

describe "StaticPages" do
  
  let(:base_title) { "Site Web de Cheval Bienveillant"} 
 
  describe "Help page" do
    it "should have the content 'Aide'" do
      visit '/static_pages/help'
      page.should have_content('Aide')
    end
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title',
                    :text => "#{base_title} | Aide")
    end
  end

  describe "Home page" do
    it "should have the content 'Cheval Bieveillant'" do
      visit '/static_pages/home'
      page.should have_content('Cheval Bienveillant')
    end
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                    :text => "#{base_title} | Accueil")
    end
  end

  describe "About page" do
    it "should have the content 'A propos de nous'" do
      visit '/static_pages/about'
      page.should have_content('A propos de nous')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "#{base_title} | A propos")
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_content('Contact')
    end
    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                    :text => "#{base_title} | Contact")
    end
  end

end
