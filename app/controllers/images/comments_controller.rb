class Images::CommentsController < CommentsController
  before_action :set_commentable
end

private
# INSIDE IMAGE Use callbacks to share common setup or constraints between actions.
def set_commentable
  @commentable = Image.find(params[:image_id])
end