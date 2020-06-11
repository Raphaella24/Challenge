#Author phatcabbage
-module(kata).
-export([past/3]).

to_millis({seconds, Count}) -> 1000 * Count;
to_millis({minutes, Count}) -> to_millis({seconds, Count * 60});
to_millis({hours,   Count}) -> to_millis({minutes, Count * 60}).

past(H, M, S) ->
  to_millis({hours,   H}) +
  to_millis({minutes, M}) +
  to_millis({seconds, S}).
