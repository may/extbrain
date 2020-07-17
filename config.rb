# Created: 2020-06-06
# Revised: 2020-07-15

$time_sensitive_life_context = true 
$keep_deleted_for_days = 60
$archive_completed_after_days = 90
# everytime it's the first of the month, >> to extbrain_completed_YYYY

$savefile_habits = 'extbrain_habits.yaml'
$savefile_projects = 'extbrain_projects.yaml'
$savefile_tasks = 'extbrain_tasks.yaml'
$lockfile = 'lockfile-extbrain.txt'
$color_only = true # if you don't want to see text indicating *when* you last completed a habit. If colorblind, set this to false. If running Windows, set to false.

$time_formatting_string = "%Y-%m-%d %H:%M, %A."

# This is only evaluated on inital launch of the program.
# May need to have it reevaluated hourly if long-running process on a single remote machine.
if $time_sensitive_life_context == true
  # 8am-5pm & M-F assume work
  if Time.now.wday.between?(1, 5) and Time.now.hour.between?(8, 17) 
    $life_context = :work
  else
    $life_context = :personal
  end
end
