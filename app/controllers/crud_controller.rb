class CrudController < ApplicationController
  extend Collectable

  def create
    save
  end

  def update
    save
  end

  def destroy
    foo.destroy
    redirect_to foos_url, notice: t('.success')
  end

  private

  def save
    if foo.update(secure_params)
      redirect_to foo, notice: t('.success')
    else
      render :form
    end
  end

  def secure_params
    params.require(:foo).permit(:bar)
  end
end
