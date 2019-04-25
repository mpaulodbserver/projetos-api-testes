Dir[File.join(File.dirname(__FILE__), '../page/*_page.rb')].each { |file| require file}
# instanciar pages
module Pages

  def home_adm_page
    @home_adm_page ||= HomeAdmPage.new
  end
  
end