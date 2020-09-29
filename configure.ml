let get_dir dir =
  (* Ensure directory name is absolute *)
  let () = Sys.chdir dir in
  let dir = Sys.getcwd () in
  (* We'd have to escape backslashes, so lazily use forward-slashes *)
  String.map (function '\\' -> '/' | c -> c) dir

let () =
  let dir = get_dir @@ Filename.dirname Sys.argv.(2) in
  match Sys.argv.(1) with
  | "stubs" ->
      let win32 =
        if Sys.win32 then
          "WIN"
        else
          "UNIX"
      in
        Printf.printf "(-DXP_%s -I %s)" win32 dir
  | "flags" ->
      Printf.printf "(-ccopt -L -ccopt %s -ccopt -ljs)" dir
  | _ ->
      prerr_endline "Unrecognised command line";
      exit 1
