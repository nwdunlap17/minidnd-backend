class CharactersController < ApplicationController

    # index, show, new, create, edit, update, delete
    def show

        @char = Character.find(params[:id])
        @char.calculateStats()
        render :json => @char
    end
    
    def new
        
    end

    def create
        @char = Character.new(char_params)
        assignStats(@char)
        @char.prepareSpells        
        
        if @char.valid?
            @char.save
            render :json => @char
        else
            render :json => {error: 'Every hero needs a name!'}
        end

    end
    
    def edit
    end

    def update
        @char = Character.find(params[:id])
        if @char.valid?
            @char.update(char_params)
            assignStats(@char)
            @char.prepareSpells   
            # byebug
            @char.armor_class = @char.armorClass
            render :json => @char
        else
            render :json => {error: 'Every hero needs a name!'}
        end
        
    end

    def destroy
        @char = Character.find(params[:id])
        @char.delete
    end

    def restAtTown
        @char = Character.find(params[:id])
        loot = params[:loot]
        bonus_xp = params[:bonusXP]
        party_size = params[:partySize]
        wizConfirm = params[:wizConfirm]
        @char.returnToSafety(loot,bonus_xp,party_size,wizConfirm)
        @char = Character.find(params[:id])
        render :json => @char
    end

    def destroy
        @char = Character.find(params[:id])
        @char.delete
    end


    private

    def char_params
        params.require(:character).permit(:id, :hp, :name, :user_id, :class_type_id, :race_id, :weapon, :armor, :xp, :level, :spell_slots, :description, :img_url)
    end
    
    def assignStats(char)
        char.calculateStats
        char.maxHP
        # char.initiative = char.getInitiative
    end

end    






