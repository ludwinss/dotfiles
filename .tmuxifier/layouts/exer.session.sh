#!/usr/bin/env bash

session_root "~/snap/exercism/5/exercism/rust"

if initialize_session "exer"; then
  new_window "exercism"
  new_window "server"
  new_window "misc"

  select_window "exercism"
  run_cmd "nvim"

  select_window "misc"
fi

finalize_and_go_to_session


