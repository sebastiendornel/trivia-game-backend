class UsersController < ApplicationController
    def index
        users = User.all
        # render json: users: include: [:name]
        render json: User.all.to_json(:include => :user_questions) #may not need the include clause
    end
    
    def show
        user = User.find_by(name: params[:name])
        # byebug
    end

    def create

        # begin
        # user = User.find(params[:name])
        # rescue
        # if !user
        #     user = User.create(name: params[:name] )#, user_questions: params[:user_question])
        #     render json: user
        # else
        #     byebug
        #     user = User.find_by(name: params[:name])
        #     render json: user
        # end
        if !!User.find_by(name: params[:name]) 
            user = User.find_by(name: params[:name])
            #byebug
            render json: user
        else
            user = User.create(name: params[:name] )#, user_questions: params[:user_question])
            #byebug
            render json: user
        end
    end
end

# user_question = UserQuestion.create(points: 1, user_id: params[:user_id], question_id: params[:question_id])


# class TrainersController < ApplicationController

#     def index
#         render json: Trainer.all.to_json(:include => :pokemons)
#     end

#     def show
#         trainer = Trainer.find(params[:id])

#         render json: trainer.to_json(:include => :pokemons)
#     end
# end
