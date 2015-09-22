class EmpDatumsController < ApplicationController

  def index
    @emp_data = EmpDatum.all
  end
end
