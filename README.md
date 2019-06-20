<<<<<<< HEAD
=======
# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
>>>>>>> f93fb586772c0212580a3f85c92c5b9f5c4f8fa1
# mod_2_project

<p class="text-sm text-grey-dark my-2">comment as <%= current_client.username %> </p>

<%= form_for([@meeting, @comment]), remote: true do |f|%>
    <div class="relative">
        <%= f.hidden_field :reply, class: "input h-32 border border-grey-light resize-none" placeholder: "Add any notes or replies here"%>
        <trix-editor input="comment_reply" id="comment_reply_trix" class="h-32 p-4"></trix-editor>
        <%= f.submit class: "btn btn-small btn-secondary block w-full text-center mt-2 lg:text-left lg:absolute lg:pin-b lg:pin-r lg:mb-2 lg:mr-2 lg:w-auto lg:inline-flex"%>
    </div>
   
<% end %>
