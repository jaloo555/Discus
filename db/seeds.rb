# frozen_string_literal: true
admin = User.create!(
    display_name: 'Admin',
    email: "admin@discus.com",
    password: "123456",
    admin: true
)

messageboard = Thredded::Messageboard.create!(
    name: 'General',
    slug: 'general',
    description: 'A board is not a board without some posts'
)

Thredded::TopicForm.new(
    title: 'My first topic',
    content: <<~MARKDOWN,
Hello **world**! :smile: This first post shows some of the Thredded default post
formatting functionality.

### Quote

> There is nothing either good or bad, but thinking makes it so.

### Image

![lime-cat](https://cloud.githubusercontent.com/assets/216339/19857777/2be75b1e-9f3c-11e6-9845-f30ceb4308a9.jpg)

### Video

https://www.youtube.com/watch?v=dQw4w9WgXcQ

### Table

| x | y | x ⊕ y |
|---|---|:-----:|
| 1 | 1 |   0   |
| 1 | 0 |   1   |
| 0 | 1 |   1   |
| 0 | 0 |   0   |

### Code

```ruby
puts 'Hello world'
```

Some BBCode is supported as well, e.g. [b]bold[/b].
    MARKDOWN
    user: admin,
    messageboard: messageboard
).save
