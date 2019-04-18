## Saint Bernard - Emergency Transfer Summary

Creates a simple prototype that will evaluate an existing emergency summary template, interpolating different place holders with persisted data to render the final result.  See the [Requirements doc](Emergency_Transfer_Summary_for_Saint_Bernard.pdf) for details.

### Ruby / Rails Versions
```
ruby-2.4.0 [ x86_64 ]

Rails 5.2.0
```
### Configuration

After cloning this repo you should be able to run:
```
$ bundle install
$ bin/rake db:migrate
```
### Sample Data

To populate the local sqlite3 database with some sample data, run the following:
```
$ lib/populate_db.rb
```
### Run the app

```
$ rails server
```
In your browser, go to http://0.0.0.0:3000/emergency_transfers

### How to run the test suite

```
$ bin/rake
```

### TODO

```
haml-rails
rubocop
rspec-rails
factory_girl_rails
```