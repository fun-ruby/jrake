# jrake
**jrake** is [Rake](https://github.com/ruby/rake) wrapped in a [JRuby](https://github.com/jruby/jruby) jar. Run your custom rake tasks in a Java runtime environment where Ruby isn't available.

# Build jrake.jar
Configure your RVM with a `jruby-1.7.19@jrake` gemset, or something equivalent.

Clone this git repository.
```
git clone https://github.com/fun-ruby/jrake.git
```
Install gems.
```
jrake$ bundle install
```
Build your `jrake.jar`.
```
jrake$ warble
```

# Running Rake Tasks
Place `jrake.jar` and your `Rakefile` in a project directory and that's it. Run rake commands as you would with Rake, using the Java jar execution syntax. For example,

```ruby
# Rakefile
desc 'Hello task'
task :hello do
  puts 'Hello jrake!'
end
```
```
$ java -jar jrake.jar -T  # list available tasks in your Rakefile
rake hello  # Hello task
```
```
$ java -jar jrake.jar hello  # run the hello task
Hello jrake!
```

```
$ java -jar jrake.jar -h  # list available Rake options
```

# require 'some-cool-gem'?
`jrake` contains just JRuby and Rake so it comes with fewer "blings" :). To add more blings, include the third-party gems in the `Gemfile` and rebuild. 

# Contributing
Feel free to submit issues and pull requests.

# License
jrake copyright (c) 2016 Long On, released under the MIT license
