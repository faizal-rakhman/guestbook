class CommentsController < ApplicationController

  def index
    p 'test getting'
    @comment_list = Comment.all
  end

  def add
    p 'test saving'
    comment = Comment.new
    comment.name = params[:name]
    comment.comment = params[:comment]
    comment.save
    redirect_to index_path
  end

  def delete
    p 'test delete'
    Comment.delete(params[:id])
    redirect_to index_path
  end

end
