# MathQuestions

This is a simple math question generator for 11+ style questions for UK transfer tests.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'math_questions'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install math_questions

## Usage

 mq = MathQuestions.new
 3.times do
   mq.table_question
   mq.series_question
   mq.square_question
   mq.alegbra_question
   mq.square_root_question
   mq.table_question
   mq.percent_question
   mq.table_question
   mq.division_question
   mq.sum_question
   mq.cube_question
   mq.division_question
   mq.cube_root_question
   mq.triangle_angles_question
   mq.compound_question
 end

## Generate the answers

 mq.answers.each_with_index do |answer, i|
   print ("Answer "+ (i + 1).to_s + ". " ), answer.to_s + "\n"
 end

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/math_questions. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the MathQuestions project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/math_questions/blob/master/CODE_OF_CONDUCT.md).
