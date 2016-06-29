module API
  module V1
    class PerfumeTypesController < ApiController
      before_action :set_perfume_type, only: [:show, :edit, :update, :destroy]

      # GET /perfume_types
      # GET /perfume_types.json
      def index
        @perfume_types = PerfumeType.all
      end

      # GET /perfume_types/1
      # GET /perfume_types/1.json
      def show
      end

      # GET /perfume_types/new
      def new
        @perfume_type = PerfumeType.new
      end

      # GET /perfume_types/1/edit
      def edit
      end

      # POST /perfume_types
      # POST /perfume_types.json
      def create
        @perfume_type = PerfumeType.new(perfume_type_params)

        respond_to do |format|
          if @perfume_type.save
            format.html { redirect_to @perfume_type, notice: 'Perfume type was successfully created.' }
            format.json { render :show, status: :created, location: @perfume_type }
          else
            format.html { render :new }
            format.json { render json: @perfume_type.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /perfume_types/1
      # PATCH/PUT /perfume_types/1.json
      def update
        respond_to do |format|
          if @perfume_type.update(perfume_type_params)
            format.html { redirect_to @perfume_type, notice: 'Perfume type was successfully updated.' }
            format.json { render :show, status: :ok, location: @perfume_type }
          else
            format.html { render :edit }
            format.json { render json: @perfume_type.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /perfume_types/1
      # DELETE /perfume_types/1.json
      def destroy
        @perfume_type.destroy
        respond_to do |format|
          format.html { redirect_to perfume_types_url, notice: 'Perfume type was successfully destroyed.' }
          format.json { head :no_content }
        end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_perfume_type
          @perfume_type = PerfumeType.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def perfume_type_params
          params.require(:perfume_type).permit(:name)
        end
    end
  end
end