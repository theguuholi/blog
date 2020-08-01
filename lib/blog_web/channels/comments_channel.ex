defmodule BlogWeb.CommentsChannel do
  use BlogWeb, :channel

  @spec join(<<_::64, _::_*8>>, any, any) :: {:ok, %{comments: any}, any}
  def join("comments:"<> post_id, payload, socket) do
    post = Blog.Posts.get_post_with_comments!(post_id)
    {:ok, %{comments: post.comments}, assign(socket, :post_id, post.id)}
  end

  def handle_in("comment:add", content, socket) do
    response = socket.assigns.post_id
    |> Blog.Comments.create_comment(content)

    IO.inspect response
    {:reply, :ok, socket}
  end

end
