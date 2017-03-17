class TeamMemberAchievementsController < ApplicationController
  before_action :set_team_member_achievement, only: [:show, :edit, :update, :destroy]

  # GET /team_member_achievements
  # GET /team_member_achievements.json
  def index
    @team_member_achievements = TeamMemberAchievement.all
  end

  # GET /team_member_achievements/1
  # GET /team_member_achievements/1.json
  def show
  end

  # GET /team_member_achievements/new
  def new
    @team_member_achievement = TeamMemberAchievement.new
  end

  # GET /team_member_achievements/1/edit
  def edit
  end

  # POST /team_member_achievements
  # POST /team_member_achievements.json
  def create
    @team_member_achievement = TeamMemberAchievement.new(team_member_achievement_params)

    respond_to do |format|
      if @team_member_achievement.save
        format.html { redirect_to @team_member_achievement, notice: 'Team member achievement was successfully created.' }
        format.json { render :show, status: :created, location: @team_member_achievement }
      else
        format.html { render :new }
        format.json { render json: @team_member_achievement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_member_achievements/1
  # PATCH/PUT /team_member_achievements/1.json
  def update
    respond_to do |format|
      if @team_member_achievement.update(team_member_achievement_params)
        format.html { redirect_to @team_member_achievement, notice: 'Team member achievement was successfully updated.' }
        format.json { render :show, status: :ok, location: @team_member_achievement }
      else
        format.html { render :edit }
        format.json { render json: @team_member_achievement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_member_achievements/1
  # DELETE /team_member_achievements/1.json
  def destroy
    @team_member_achievement.destroy
    respond_to do |format|
      format.html { redirect_to team_member_achievements_url, notice: 'Team member achievement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_member_achievement
      @team_member_achievement = TeamMemberAchievement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_member_achievement_params
      params.require(:team_member_achievement).permit(:team_member_id, :achievement_id)
    end
end
