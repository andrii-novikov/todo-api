class Api::V1::ProjectsController < ApplicationController
  load_and_authorize_resource

  def create
    respond_with @project.save
  end

  def index
    respond_with @projects
  end

  def show
    respond_with @project
  end

  def destroy
    status = @project.destroy ? :ok : :unprocessable_entity
    respond_with status: status
  end

  private

  def project_params
    params.require(:project).permit(:name)
  end
end
