class ClassTypesController < ApplicationController

    def index
        render json: ClassType.all
    end

end
