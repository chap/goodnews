class PlaysController < ApplicationController

  # POST /plays
  # POST /plays.json
  def create
    @post = current_account.posts.find(params[:post_id])
    @play = @post.plays.new(
      :account => current_account,
      :referrer => request.referrer,
      :ip => request.ip
    )

    respond_to do |format|
      if @play.save
        format.html { redirect_to post_play_path(@post, @play), notice: 'Play was successfully created.' }
        format.json { render json: @play, status: :created, location: post_play_path(@post, @play) }
      else
        format.html { render action: "new" }
        format.json { render json: @play.errors, status: :unprocessable_entity }
      end
    end
  end
end
