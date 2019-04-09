# Stackserver

OTP server that expose an interface to manipulate a stack.
Inspired from "Programming Elixir |> 1.6", Chapter 17

## Usage

Start an iex session with the project loaded
```
$ iex -S mix
```

### Start the stack process
```
iex(1)> Stackserver.start_link [420, 1337, "coffee"]
>> {:ok, #PID<0.134.0>}
```

### Push value on the stack
```
iex(1)> Stackserver.push "tea"
>> {:ok, ["tea", 420, 1337, "coffee"]}
```

### Pop value off the stack
```
iex(1)> Stackserver.pop
>> {:ok, "tea"}
```

### inspect the stack
```
iex(1)> Stackserver.inspect
>> {:ok, [420, 1337, "coffee"]}
```

### view top of the stack
```
iex(1)> Stackserver.top
>> {:ok, 420}
```
