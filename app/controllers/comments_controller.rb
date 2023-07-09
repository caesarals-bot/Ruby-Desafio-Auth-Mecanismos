class CommentsController < ApplicationController
    def create
        @publication = Publication.find(params[:publication_id])
        @comment = @publication.comments.build(comment_params)
        @comment.user = current_user

        if @comment.save
            redirect_to @publication, notice: 'Comentario creado exitosamente.'
        else
            render 'publications/show'
        end
    end
    
    private
    
    def comment_params
        params.require(:comment).permit(:content)
    end
end