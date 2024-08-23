#!/usr/bin/env bash

session_root "~/workspace/agetic/yatic"

if initialize_session "a-yatic"; then
  new_window "front-end"
  new_window "back-end"
  new_window "server"
  new_window "misc"

  select_window "front-end"
  run_cmd "cd $session_root/gestion-academica-yatic-frontend"
  run_cmd "nv"

  select_window "back-end"
  run_cmd "cd $session_root/gestion-academica-yatic-backend"
  run_cmd "nv"

  select_window "server"
  split_h 50
  run_cmd "cd $session_root/gestion-academica-yatic-frontend" 0
  run_cmd "npm start" 0

  run_cmd "cd $session_root/gestion-academica-yatic-backend" 1
  run_cmd "dev" 1

  select_window "misc"
  split_h 50
  run_cmd "cd $session_root/gestion-academica-yatic-frontend" 0

  run_cmd "cd $session_root/gestion-academica-yatic-backend" 1

  select_window "front-end"
fi

finalize_and_go_to_session


