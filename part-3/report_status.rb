module ReportStatus

  def resolved?
    !!@resolved
  end

  def close
    @resolved = true
  end

end
