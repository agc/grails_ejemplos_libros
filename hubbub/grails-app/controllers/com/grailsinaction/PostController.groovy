package com.grailsinaction

class PostController {
    def scaffold = Post
    def postService

    def timeline = {
        def user = User.findByUserId(params.id)
        [ user : user ]
    }

    def addPost = {
        try {
            def newPost = postService.createPost(params.id, params.content)
            flash.message = "Added new post: ${newPost.content}"
        } catch (PostException pe) {
            flash.message = pe.message
        }
        redirect(action: 'timeline', id: params.id)
    }

    /* Refactor old addPost() action into the PostService */
    /*
    def addPost = {
        def user = User.findByUserId(params.id)
        if (user) {
            def post = new Post(params)
            if (post.validate()) {
                user.addToPosts(post)
                flash.message = "Successfully created Post"
            } else {
                flash.message = "Invalid or empty post"
            }
        } else {
            flash.message = "Invalid User Id"
        }
        redirect(action: 'timeline', id: params.id)
    }
    */
}
