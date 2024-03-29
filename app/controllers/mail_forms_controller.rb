class MailFormsController < ApplicationController

  # POST /mail_forms
  # POST /mail_forms.json
  def create
    @mail_form = MailForm.new(params[:mail_form])

    respond_to do |format|
      if @mail_form.save
        format.html { redirect_to blogs_path, notice: 'Mail form was successfully created.' }
        format.json { render json: @mail_form, status: :created, location: @mail_form }
      else
        #format.html { render action: "new" }
        format.html { redirect_to blogs_path, notice: 'mail form error' }
        format.json { render json: @mail_form.errors, status: :unprocessable_entity }
      end
    end
  end
end
