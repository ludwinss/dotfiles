#!/usr/bin/env bash

session_root "~/workspace/level33/essus"

if initialize_session "l-essus"; then
  new_window "front-end"
  new_window "back-end"
  new_window "server"
  new_window "misc"

  select_window "front-end"
  run_cmd "cd $session_root/essus-front"
  run_cmd "nv"

  select_window "back-end"
  run_cmd "cd $session_root/serviceessus"
  run_cmd "nv"

  select_window "server"
  split_h 50
  run_cmd "cd $session_root/essus-front" 0
  run_cmd "npm run dev" 0

  run_cmd "cd $session_root/serviceessus" 1
  run_cmd "dev" 1

  select_window "misc"
  split_h 50
  run_cmd "cd $session_root/essus-front" 0
  run_cmd "cd $session_root/serviceessus" 1

  select_window "front-end"
fi

finalize_and_go_to_session
