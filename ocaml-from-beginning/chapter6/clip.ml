let clip value = 
  if value < 1 then 1 else if value >= 1 && value <= 10 then value else 10

let clip_list list = 
  List.map (fun h -> clip h) list