#!/usr/bin/env bash

if initialize_session "misc"; then
  new_window "misc"
  new_window "practice"
  new_window "server"

  select_window "practice"
  run_cmd "cd ~/workspace/practice"

  select_window "misc"
fi

finalize_and_go_to_session


