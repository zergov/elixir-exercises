defmodule Stackserver.Server do
  use GenServer

  def init(stack) do
    { :ok, stack }
  end

  def handle_call({:push, value }, _from, stack) do
    newstack = [value | stack]
    {:reply, {:ok, newstack},  newstack}
  end

  def handle_call(:top, _from, [value | tail]) do
    {:reply, value, [value | tail]}
  end

  def handle_call(:pop, _from, [value | stack]) do
    {:reply, value, stack}
  end

  def handle_call(:inspect, _from, stack) do
    {:reply, stack, stack}
  end
end
