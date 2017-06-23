module Api
  module V1
    class TasksController < ApplicationController
      load_and_authorize_resource :project
      load_and_authorize_resource through: :project

      def create
        respond_with @task.save
      end

      def index
        respond_with @tasks
      end

      def show
        respond_with @task
      end

      def destroy
        respond_with @task.destroy
      end
    end

  end
end