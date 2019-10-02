module Api
    module V1
        class ImagesController < ApplicationController
           def index
                images = Image.order('created_at DESC');
                render json: {status: 'SUCCESS', message:'Images already loaded', data:images},status: :ok 
           end
           
           def create
                image = Image.new(image_params)
                if image.save
                    render json: {status: 'SUCCESS', message:'Saved article', data:image},status: :ok
                else
                    render json: {status: 'ERROR', message:'Image not saved', data:image.errors},status: :unprocessable_entity
                end
            end
            
            def image_params
                params.permit(:img_name, :base64_img)
            end
        end
    end
end
