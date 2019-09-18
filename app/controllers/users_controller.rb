class UsersController < ApplicationController

    def show
        user = User.find(params[:id].to_i)
        # byebug
        charactersList = []
        user.characters.each do |character|
            charactersList.push({ id: character.id, name: character.name,})
        end
        render json: {characters: charactersList}
    end

    def get_user_data
        # byebug
        user = User.find(params[:user_id])
        if (!!user.characters.first)
            @character = user.characters.first
            # byebug
            redirect_to @character
        else
            # byebug
            render json: {hasCharacter: 'false'}
        end
    end

    def login
        found_user = User.where ("username = '#{params[:userName]}'")
        if (found_user.length > 0)
            found_user = found_user[0]
            render json: {message: "User #{found_user.id} Found", user_id: found_user.id}
        else
            new_user = User.create({username: params[:userName]})
            render json: {message: "User #{new_user.id} Created", user_id: new_user.id}
        end 
    end

    def logout
    end



end
