#!/usr/bin/env bash

session_root "~/workspace/agetic/boletin"

if initialize_session "a-boletin"; then
  new_window "front-end"
  new_window "back-end"
  new_window "server"
  new_window "misc"

  select_window "front-end"
  run_cmd "cd $session_root/boletin-frontend"
  run_cmd "nv"

  select_window "back-end"
  run_cmd "cd $session_root/ms-reportes"
  run_cmd "nv"

  select_window "server"
  split_h 50
  run_cmd "cd $session_root/boletin-frontend" 0
  run_cmd "npm start" 0

  run_cmd "cd $session_root/ms-reportes" 1
  run_cmd "dev" 1

  select_window "misc"
  split_h 50
  run_cmd "cd $session_root/boletin-frontend" 0

  run_cmd "cd $session_root/ms-reportes" 1

  select_window "front-end"
fi

finalize_and_go_to_session

