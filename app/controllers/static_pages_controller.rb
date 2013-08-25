class StaticPagesController < ApplicationController
  def home
    @frontpage = Frontpage.find_by(id: '1')
  end

  def products
  end

  def about
  end

  def contact
  end

  def solutions
  end

  def catalog
  end

  def subcat
  end

  def spec
  end

  def services
  end
end
