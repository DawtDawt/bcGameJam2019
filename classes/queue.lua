-- Implementation of double queue
-- Use to keep track of player's actions
-- Operations:
-- pushleft == push at front,
-- pushright == push at end,
-- popleft == pop at front,
-- popright == pop at end

List = {}
function List.new()
  return {first = 0; last = -1}
end

function List.pushleft ( list, value )
  local first = list.first  - 1
  list.first = first
  list[first] = value
end

function List.popleft ( list )
  local first = list.first
  if first > last then error( "empty queue" ) end
  local value = list[first]
  list[first] = nil
  list.first = first + 1
  return value
end


function List.pushright ( list, value )
  local last = list.last + 1
  list.last = last
  list[last] = value
end

function List.popright ( list )
  local last = list.last
  if last < first then error( "empty queue" ) end
  local value = list[last]
  list[last] = nil
  list.last = last - 1
  return value
end
