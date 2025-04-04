$OFFLISTING
$if NOT set solve_with $SET solve_with HIGHS
$if NOT set run_name $SET run_name %SCENARIO%
$hiddenCall gams scenario.run parmfile=gams.opt LP=%SOLVE_WITH% --scenario=%SCENARIO% --run_name=%RUN_NAME% gdx=%RUN_NAME% O=%RUN_NAME%.lst filecase=4
$terminate
