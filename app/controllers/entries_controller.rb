# -*- coding: utf-8 -*-
class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]
  #before_filter :authenticate_company!, :except => [:index, :show]

  # GET /entries
  # GET /entries.json
   def index
     @entries = Entry.all
    
   end

  # # GET /entries/1
  # # GET /entries/1.json
   def show
   
   end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry
      @entry = Entry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_params
      params.require(:entry).permit(:title, :body)
    end
end
