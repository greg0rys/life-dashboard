class ContactMesController < ApplicationController
  before_action :set_contact_me, only: %i[ show edit update destroy ]

  # GET /contact_mes or /contact_mes.json
  def index
    @contact_mes = ContactMe.all
  end

  # GET /contact_mes/1 or /contact_mes/1.json
  def show
  end

  # GET /contact_mes/new
  def new
    @contact_me = ContactMe.new
  end

  # GET /contact_mes/1/edit
  def edit
  end

  # POST /contact_mes or /contact_mes.json
  def create
    @contact_me = ContactMe.new(contact_me_params)

    respond_to do |format|
      if @contact_me.save
        format.html { redirect_to contact_me_url(@contact_me), notice: "Contact me was successfully created." }
        format.json { render :show, status: :created, location: @contact_me }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contact_me.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_mes/1 or /contact_mes/1.json
  def update
    respond_to do |format|
      if @contact_me.update(contact_me_params)
        format.html { redirect_to contact_me_url(@contact_me), notice: "Contact me was successfully updated." }
        format.json { render :show, status: :ok, location: @contact_me }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contact_me.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_mes/1 or /contact_mes/1.json
  def destroy
    @contact_me.destroy!

    respond_to do |format|
      format.html { redirect_to contact_mes_url, notice: "Contact me was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_me
      @contact_me = ContactMe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_me_params
      params.require(:contact_me).permit(:name, :email, :phone, :description)
    end
end
