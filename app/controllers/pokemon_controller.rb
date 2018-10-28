class PokemonController < ApplicationController

    def capture
        p = Pokemon.find(params[:id])
        p.trainer_id = current_trainer.id
        p.save
        redirect_to "/"
    end

    def damage
        p = Pokemon.find(params[:id])
        p.health = p.health - 10
        if p.health <= 0
            p.delete
        end
        p.save
        redirect_to trainer_path(id: current_trainer)
    end

    def create
        @pokemon = Pokemon.new(
            name: poke_params[:name],
            level: 1,
            ndex: poke_params[:ndex],
            trainer_id: current_trainer.id,
            health: 100
        )
        if @pokemon.valid?
            @pokemon.save!
            redirect_to trainer_path(id: current_trainer)
        else
            flash[:error] = @pokemon.errors.full_messages.to_sentence
            render 'pokemon/new'
        end
    end

    def new
        @pokemon = Pokemon.new
    end

    private
        def poke_params
            params.require(:pokemon).permit(:name, :ndex)
        end
end
