class CommentsController < ApplicationController
    before_action :find_service
    # before_action :find_comment, only: [:edit, :update]


    # before_action :authenticate_client!
    # before_action :set_comment, only: [:create, :destroy]
    # before_action :set_service


    def new

        @comment = Comment.new
        
    end

    def create
        clientID = get_current_client.id 
        service = params[:id]
        replyins = params[:comment][:reply]
        removediv = replyins.split("</div>")
        removedivi = removediv.join("").split("<div>")
        replyfinal = removedivi.join("")      
       @comment = Comment.create(reply: replyfinal, service_id: service, client_id: clientID)
       
    #    if @comment.save
           redirect_to service_path(@service)
        # else
        #     render 'new'
        # end
    end

    def destroy
     
        @comment = @service.comments.find(params[:id])
        @comment.destroy
      
        redirect_to service_path(@service)
    end

    def edit
   
        @comment = @service.comments.find(params[:id])

        
    end

    def update
        @comment = @service.comments.find(params[:id])
        
        
       
        if  @comment.update(reply: params["comment"]["reply"])
           # (params[:comment]).permit(:reply, :service_id, :client_id)
            redirect_to service_path(@service)
        else
            render 'edit'
        end
    end


    private

    def find_service
        @service = Service.find(params[:service_id])
    end

    # def find_comment
    #      byebug
    #     @comment = @service.comments.find(params[:id])
    # end
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
