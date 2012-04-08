class MailFormsController < ApplicationController
  # GET /mail_forms
  # GET /mail_forms.json
  def index
    @mail_forms = MailForm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mail_forms }
    end
  end

  # GET /mail_forms/1
  # GET /mail_forms/1.json
  def show
    @mail_form = MailForm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mail_form }
    end
  end

  # GET /mail_forms/new
  # GET /mail_forms/new.json
  def new
    @mail_form = MailForm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mail_form }
    end
  end

  # GET /mail_forms/1/edit
  def edit
    @mail_form = MailForm.find(params[:id])
  end

  # POST /mail_forms
  # POST /mail_forms.json
  def create
    @mail_form = MailForm.new(params[:mail_form])

    respond_to do |format|
      if @mail_form.save
        format.html { redirect_to @mail_form, notice: 'Mail form was successfully created.' }
        format.json { render json: @mail_form, status: :created, location: @mail_form }
      else
        format.html { render action: "new" }
        format.json { render json: @mail_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mail_forms/1
  # PUT /mail_forms/1.json
  def update
    @mail_form = MailForm.find(params[:id])

    respond_to do |format|
      if @mail_form.update_attributes(params[:mail_form])
        format.html { redirect_to @mail_form, notice: 'Mail form was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mail_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mail_forms/1
  # DELETE /mail_forms/1.json
  def destroy
    @mail_form = MailForm.find(params[:id])
    @mail_form.destroy

    respond_to do |format|
      format.html { redirect_to mail_forms_url }
      format.json { head :no_content }
    end
  end
end
