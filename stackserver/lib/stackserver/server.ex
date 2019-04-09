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
    {:reply, {:ok, value}, [value | tail]}
  end

  def handle_call(:pop, _from, [value | stack]) do
    {:reply, {:ok, value}, stack}
  end

  def handle_call(:inspect, _from, stack) do
    {:reply, {:ok, stack}, stack}
  end
end
