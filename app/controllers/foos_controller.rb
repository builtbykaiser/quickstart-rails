class FoosController < ApplicationController
  let(:scoped_foos) { policy_scope(Foo.all) }
  let(:paginated_foos) { pagy(scoped_foos) }
  let(:pagination) { paginated_foos.first }
  let(:foos) { paginated_foos.last }
  let(:foo) { authorize(scoped_foos.find_or_initialize_by(id: params[:id])) }

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
