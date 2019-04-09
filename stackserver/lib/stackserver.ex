defmodule Stackserver do
  @server Stackserver.Server

  def start_link(initial_stack) do
    GenServer.start_link(@server, initial_stack, name: @server)
  end

  def push(value) do
    GenServer.call @server, {:push, value}
  end

  def top do
    GenServer.call @server, :top
  end

  def pop do
    GenServer.call @server, :pop
  end

  def inspect do
    GenServer.call @server, :inspect
  end
end
