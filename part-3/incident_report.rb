require_relative 'assigned'

class IncidentReport < Assigned
  attr_reader :description, :reporter
  attr_accessor :assigned_employee

  def initialize(args = {})
    @description = args.fetch(:description) { "Unknown damage" }
    @reporter = args.fetch(:reporter) { "anonymous" }
    @resolved = false
  end

  include ReportStatus
  # def resolved?
  #   !!@resolved
  # end

  # def close
  #   @resolved = true
  # end

  # def assigned?
  #   !!@assigned_employee
  # end
end

