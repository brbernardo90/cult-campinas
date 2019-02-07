module API  
    module V1
      class Eventos < Grape::API
        include API::V1::Defaults
  
        resource :eventos do
          desc "Return all eventos"
          get "", root: :eventos do
            Evento.all
          end
  
          desc "Return a evento"
          params do
            requires :id, type: String, desc: "ID of the 
              evento"
          end
          get ":id", root: "evento" do
            Evento.where(id: permitted_params[:id]).first!
          end

          desc 'Create a Evento.'
          params do
            requires :title, type: String, desc: 'The title.'
            requires :text, type: String, desc: 'The text.'
          end
          post do
            # authenticate!
            Evento.create({
              title: params[:title],
              text: params[:text]
            })
          end
        end
      end
    end
  end