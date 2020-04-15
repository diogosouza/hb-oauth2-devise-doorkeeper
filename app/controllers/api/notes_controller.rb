class Api::NotesController < Api::BaseController
    before_action :doorkeeper_authorize!

    def index
      @notes = Note.all
      respond_with @notes
    end
end
