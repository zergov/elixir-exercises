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
$ Stackserver.start_link [420, 1337, "coffee"]
>> {:ok, #PID<0.134.0>}
```

### Push value on the stack
```
$ Stackserver.push "tea"
>> {:ok, ["tea", 420, 1337, "coffee"]}
```

### Pop value off the stack
```
$ Stackserver.pop
>> "tea"
```

### inspect the stack
```
$ Stackserver.inspect
>> [420, 1337, "coffee"]
```

### top the stack
```
$ Stackserver.inspect
>> 420
```
