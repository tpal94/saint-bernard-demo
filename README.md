## Saint Bernard - Emergency Transfer Summary

Creates a simple prototype that will evaluate an existing emergency summary template, interpolating different place holders with persisted data to render the final result.  See the [Requirements doc](Emergency_Transfer_Summary_for_Saint_Bernard.pdf) for details.

### Ruby / Rails Versions
```
ruby-2.6.1 [ x86_64 ]

Rails 5.2.0
```
### Configuration

After cloning this repo you should be able to run:
```
$ bundle install
$ rails db:migrate
```
### Sample Data

To populate the local sqlite3 database with some sample data, run the following:
```
$ rails db:seed
```
### Run the app

```
$ rails server
```
In your browser, go to http://0.0.0.0:3000/emergency_transfers


For the admin panel

go to http://0.0.0.0:3000/admin

You can easily manage all the data.


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