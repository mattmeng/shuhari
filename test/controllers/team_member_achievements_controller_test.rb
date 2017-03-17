require 'test_helper'

class TeamMemberAchievementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_member_achievement = team_member_achievements(:one)
  end

  test "should get index" do
    get team_member_achievements_url
    assert_response :success
  end

  test "should get new" do
    get new_team_member_achievement_url
    assert_response :success
  end

  test "should create team_member_achievement" do
    assert_difference('TeamMemberAchievement.count') do
      post team_member_achievements_url, params: { team_member_achievement: { achievement_id: @team_member_achievement.achievement_id, team_member_id: @team_member_achievement.team_member_id } }
    end

    assert_redirected_to team_member_achievement_url(TeamMemberAchievement.last)
  end

  test "should show team_member_achievement" do
    get team_member_achievement_url(@team_member_achievement)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_member_achievement_url(@team_member_achievement)
    assert_response :success
  end

  test "should update team_member_achievement" do
    patch team_member_achievement_url(@team_member_achievement), params: { team_member_achievement: { achievement_id: @team_member_achievement.achievement_id, team_member_id: @team_member_achievement.team_member_id } }
    assert_redirected_to team_member_achievement_url(@team_member_achievement)
  end

  test "should destroy team_member_achievement" do
    assert_difference('TeamMemberAchievement.count', -1) do
      delete team_member_achievement_url(@team_member_achievement)
    end

    assert_redirected_to team_member_achievements_url
  end
end
