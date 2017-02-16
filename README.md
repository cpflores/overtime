# Overtime app - Example

Key requirement: company needs documentation that salaried employees did or did not get overtime each week.

## Models
- Post -> date:date rationale:text
- User -> Devise
- AdminUser -> STI
- Audit log

## Features
- Approval workflow
- SMS sending -> link to approval or overtime input -> integrate with Heroku scheduler
- Administrate admin dashboard
- Block non admin and guest users
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## UI
- Bootstrap -> formatting
- Icons from glyphicons
- Update the styles for forms

## TODOS:
- Integrate validation for phone attr in User

## Built with:
- Rails 5
- Bootstrap 3
- Gritter
- RSpec
- Capybara
- FactoryGirl
- Devise
- Twilio
- Administrate
- Bourbon
- Pundit
