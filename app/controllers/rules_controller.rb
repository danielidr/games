class RulesController < ApplicationController
    before_action :set_rule, only: %i[ show edit update destroy ]

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_rule
        @rule = Rule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rule_params
        params.require(:rule).permit(:text_rules, :pdf_rules)
    end
end
