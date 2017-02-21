class StaticController < ApplicationController
  def home
    if admin_types.include?(current_user.type)
      @pending_approvals = Post.submitted
      @recent_audit_items = AuditLog.last(10)
    else
      #code
    end
  end
end
