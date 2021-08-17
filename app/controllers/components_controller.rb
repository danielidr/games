class ComponentsController < ApplicationController
    before_action :set_component, only: %i[ show edit update destroy ]

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_component
        @component = Component.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def component_params
        params.require(:component).permit(:pieces)
    end
end
