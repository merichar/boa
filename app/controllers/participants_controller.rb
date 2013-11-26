class ParticipantsController < ApplicationController
  load_and_authorize_resource
  
  # GET /participants
  # GET /participants.json
  def index
    @participants = Participant.alphabetical.paginate(:page => params[:participants_page]).per_page(50)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @participants }
    end
  end

  def lookup
    # Process request if barcode is present
    if params[:participant] and params[:participant][:card_number]
      participant = Participant.find_by_card params[:participant][:card_number]
      
      if participant.nil? # participant does not exist

        # Find the andrew id associated with the card or it's an error
        andrewid = CarnegieMellonIDCard.search "#{params[:participant][:card_number]}"
        unless andrewid.nil?
          params[:participant][:andrewid] = andrewid
          redirect_to new_participant_url params[:participant]
        else
          flash[:error] = "Invalid card" 
        end

      elsif session[:return_url] and session[:return_url] != ''
        session[:participant_id] = participant
        redirect_to session[:return_url]

      else
        redirect_to participant_url participant
      end
    end # if params[:participant] and params[:participant][:card_number]
  end

  # GET /participants/1
  # GET /participants/1.json
  def show
    @participant = Participant.find(params[:id])
    @memberships = @participant.memberships.all
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @participant }
    end
  end

  # GET /participants/new
  # GET /participants/new.json
  def new
    @participant = Participant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @participant }
    end
  end

  # GET /participants/new
  # GET /participants/new.json
  def new_user_and_participant
    @participant = Participant.new

    respond_to do |format|
      format.html # new_user_and_participant.html.erb
      format.json { render json: @participant }
    end
  end

  # GET /participants/1/edit
  def edit
    @participant = Participant.find(params[:id])
  end

  # POST /participants
  # POST /participants.json
  def create
    @participant = Participant.new(params[:participant])

    respond_to do |format|
      if @participant.save
        format.html { redirect_to @participant, notice: 'Participant was successfully created.' }
        format.json { render json: @participant, status: :created, location: @participant }
      else
        format.html { render action: "new" }
        format.json { render json: @participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /participants/1
  # PUT /participants/1.json
  def update
    @participant = Participant.find(params[:id])

    respond_to do |format|
      if @participant.update_attributes(params[:participant])
        format.html { redirect_to @participant, notice: 'Participant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participants/1
  # DELETE /participants/1.json
  def destroy
    @participant = Participant.find(params[:id])
    @participant.destroy

    respond_to do |format|
      format.html { redirect_to participants_url }
      format.json { head :no_content }
    end
  end
end
