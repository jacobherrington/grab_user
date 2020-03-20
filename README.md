# GrabUser
This is a [Rails Engine](https://guides.rubyonrails.org/engines.html) that
intentionally isolates some dangerous code.

You can pass an ID parameter to the route if you want to get a user by ID:

```
localhost:3000/grab_user?id=4 # Login as the user with an id of 4
```

This should probably not be used at all outside of the dev.to application,
it's generally pretty hacky.

## Install

Add the following code to your Gemfile:

`gem "grab_user", git: "https://github.com/jacobherrington/grab_user.git" # DO NOT COMMIT ME`

Add the following code to your `routes.rb` file:

```
# DO NOT COMMIT ME
if Rails.env.development?
  mount GrabUser::Engine, at: "/grab_user"
end
# DO NOT COMMIT ME
```
## License
The gem is available as open source under the terms of the
[MIT License](https://opensource.org/licenses/MIT).
    
