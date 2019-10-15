module Api
    module V1
        class RequestsController < ApplicationController
           def index
                requests = Request.order('created_at DESC');
                render json: {status: 'SUCCESS', data:requests},status: :ok 
           end
           
           def create
                request = Request.new(req_params)
                if request.save
                    render json: {status: 'SUCCESS', data:request},status: :ok
                else
                    render json: {status: 'ERROR', message:'problem to request image, try again', data:request.errors},status: :unprocessable_entity
                end
            end

            def destroy
				request = Request.find(params[:id])
				request.destroy
				render json: {status: 'SUCCESS', message:'Deleted request', data:request},status: :ok
			end
            
            def image_params
                params.permit(:is_processed)
            end
        end
    end
end
