defmodule BlogWeb.CommentsChannel do
  use BlogWeb, :channel

  @spec join(<<_::64, _::_*8>>, any, any) :: {:ok, %{comments: any}, any}
  def join("comments:"<> post_id, payload, socket) do
    post = Blog.Posts.get_post_with_comments!(post_id)
    {:ok, %{comments: post.comments}, socket}
  end

  def handle_in("comment:add", attrs, socket) do
    IO.inspect "teste 1"
  end


  def handle_in("comment:add1", attrs, socket) do
    IO.inspect "teste 2"
  end
end
