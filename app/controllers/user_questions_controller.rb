class UserQuestionsController < ApplicationController
    def index
        user_questions = UserQuestion.all
        # render json: user_questions: include: [:points, :user_id, :question_id]
        # options = {}
        # options[:include] = [:user, :question]
        render json: UserQuestion.all.to_json(:include => [:user, :question])
    end


    def create
        
        user_question = UserQuestion.create(points: 1, user_id: params[:user_id], question_id: params[:question_id])
        
    end
end
# def create
#     name = Faker::Name.first_name
#     species = Faker::Games::Pokemon.name
#     new_pokemon = Pokemon.create(nickname: name, species: species, trainer_id: params[:trainer_id])
#     render json: new_pokemon
# end
