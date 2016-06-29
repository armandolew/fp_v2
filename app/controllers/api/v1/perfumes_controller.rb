module API
  module V1
    class Api::V1::PerfumesController < ApiController
      before_action :set_perfume, only: [:show, :update, :destroy]

      # GET /perfumes
      # GET /perfumes.json
      def index
        @perfumes = Perfume.all
        render 'api/v1/perfumes/index', status: :ok
      end

      # GET /perfumes/1
      # GET /perfumes/1.json
      def show
        render 'api/v1/perfumes/show', status: :ok
      end

      # POST /perfumes
      # POST /perfumes.json
      def create
        @perfume = Perfume.new(perfume_params)

        if @perfume.save
          render 'api/v1/perfumes/show', status: :ok
        else
          render 'api/v1/perfume/show', status: :unprocessable_entity
        end
      end

      # PATCH/PUT /perfumes/1
      # PATCH/PUT /perfumes/1.json
      def update
        if @perfume.update(perfume_params)
          render 'api/v1/perfumes/show', status: :ok
        else
          render 'api/v1/perfume/show', status: :unprocessable_entity
        end
      end

      # DELETE /perfumes/1
      # DELETE /perfumes/1.json
      def destroy
        @perfume.destroy
        respond_to do |format|
          format.html { redirect_to perfumes_url, notice: 'Perfume was successfully destroyed.' }
          format.json { head :no_content }
        end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_perfume
          @perfume = Perfume.find_by(:id => params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def perfume_params
          params.require(:perfume).permit(:name, :trend, :family_type_id, :perfume_type_id, :image)
        end
    end
  end
end
