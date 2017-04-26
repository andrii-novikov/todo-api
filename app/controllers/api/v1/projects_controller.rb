class Api::V1::ProjectsController < ApplicationController
  load_and_authorize_resource
  def create
    binding.pry
  end

  def index
  end

  def show
  end

  def destroy
  end

  private

  def project_params
    params.require(:project).permit(:name)
  end
end
