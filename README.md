# Rails Amusement Park

## Learning Goals

- Use form helpers
- Work with multiple models that interact with each other
- Build a simple sessions system

## Instructions

You're going to be building an amusement park. There will be users, attractions,
and users can take rides on attractions.

- This is a test driven lab, check out the model tests and get those to pass
  before moving onto the feature specs.
- Remember, if you use scaffolds or generators do **_not_** overwrite the model
  specs that are included in this lab. Always use the `--no-test-framework` flag
  and enter `n` or `no` when prompted to overwrite the model specs for this lab.

**A hint about requiring a password**: ActiveRecord comes with a handy
`has_secure_password` attribute that you can set on a model. It requires that
you enable the `bcrypt` gem and that you add a `password_digest` column to your
model. You can read more about
[`has_secure_password` here](http://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html).

If you want to see the completed version of the app, you can check out the `solution`
branch and run it locally:

```console
$ git checkout solution
$ bundle install
$ rails db:migrate db:seed
$ rails s
```

After running these commands, the finished app will be available on
[http://localhost:3000/](http://localhost:3000/).

After viewing the solution, you can switch back to the default branch:

```console
$ git checkout master
```

## Resources

- [Rails Generators](http://guides.rubyonrails.org/generators.html)
- [`rails generate`](https://guides.rubyonrails.org/command_line.html#rails-generate)
- [Form Helpers](http://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html)
- [Form Helpers Guide](http://guides.rubyonrails.org/form_helpers.html)
- [Collection Select](http://stackoverflow.com/questions/8907867/can-someone-explain-collection-select-to-me-in-clear-simple-terms)
- [Sessions in Rails](http://guides.rubyonrails.org/security.html#sessions)
- [`has_secure_password`](http://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html)
