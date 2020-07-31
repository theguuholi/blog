defmodule BlogWeb.CommentsChannel do
  use BlogWeb, :channel

  def join("comments:"<> post_id, payload, socket) do
    post = Blog.Posts.get_post_with_comments!(post_id)
    {:ok, %{comments: post.comments}, socket}
  end

  def handle_in() do

  end
end
