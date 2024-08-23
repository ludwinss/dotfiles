#!/usr/bin/env bash

session_root "~/workspace/level33/dmtran"

if initialize_session "l-dtran"; then
  new_window "front-end"
  new_window "server"
  new_window "misc"

  select_window "front-end"
  run_cmd "cd $session_root/dmtran-valenca"
  run_cmd "nv"

  select_window "server"
  run_cmd "cd $session_root/dmtran-valenca"
  run_cmd "nvm use 16"
  run_cmd "npm start"  

  select_window "misc"
  run_cmd "cd $session_root/dmtran-valenca"
  run_cmd "nvm use 16"

  select_window "front-end"
fi

finalize_and_go_to_session
