class CommentsController < ApplicationController

def index
  @comments = Comment.all
end


def new
  @comments = Comment.new
end