class Posts::CommentsController < CommentsController
  before_action :set_commentable
end

private
# INSIDE POST Use callbacks to share common setup or constraints between actions.
def set_commentable
  @commentable = Post.find(params[:post_id])
end