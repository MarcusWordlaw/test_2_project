class CommentsController < ApplicationController
    before_action :find_service
    # before_action :authenticate_client!
    # before_action :set_comment, only: [:create, :destroy]
    # before_action :set_service


    def new
        @comment = Comment.new
        
    end

    def create
       
      
        @comment = @service.comments.create(params[:comment].permit(:reply))
        # @comment.client_id = current_client.id <-need current client 
        @comment.save
       
            @comment.save
            
                redirect_to service_path(@service)
                # format.js # render create.js.erb

            # else
            #     render 'new'
            
        
    end

    def destroy
        @comment = @service.comments.find(params[:id])
        @comment.destroy
        redirect_to service_path(@service)
    end



    private

    def find_service
        @service = Service.find(params[:service_id])
    end
        #

    # # def set_service
    # #     @service = Service.find(params[:meetng_id])

    # # end

    # def set_comment
    #     @comment = Comment.find(params[:service_id])
    # end

    # def comment_params
    #     params.require(:comment).permit(:reply)
    # end



end
