## create project

## creating controllers

- `rails g/generate controller Posts`

## model

- create command: `rails g model Post title:string body:text` creates model and migration file as well

## migration

- run migration `rake db:migrate`

## routing

- root routes: `root 'posts#index'`
- for resource : `resources: posts`
- get all routes : `rake routes`

## view

# creating form

```
  <%= form_for :post, url:posts_path do |f| %>
    <p>
        <%= f.label :title %><br/>
        <%= f.text_field :title %><br/>
    </p>
    <p>
        <%= f.label :body %><br/>
        <%= f.text_area  :body %><br/>
    </p>
    <p>
        <%= f.submit "Submit", disable_with: 'Submiting...'%>
    </p>
<% end %>
```

## miscelleneous

- for getting posts data render `render plain: params[:post].inspect`
