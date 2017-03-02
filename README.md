# Overtime app - Example

Key requirement: company needs documentation that salaried employees did or did not get overtime each week.

## Models
- Post -> date:date rationale:text -> updated work_performed:text
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
- Create audit log for each text message
- Update end_date when confirmed
- Update audit log status when overtime status has been rejected
- Mobile friendly buttons with timestamp on employee homepage, with better sort order
- No unnecessary nav for admins

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
- Factory Girl
- Devise
- Twilio
- Administrate
- Bourbon
- Pundit
- Heroku
- Spark Post
- Honeybadger <- in production only, monthly fee
- New Relic
