module API
  class EmpDatums < Grape::API
    use Rack::JSONP

    desc 'gets employee data'
    get "all" do
      present EmpDatum.order("name asc").all, with: API::Entities::EmpDatum
    end
  end

end






# module Employee
#   class Data < Grape::API

#     resource :employee_data do
#       desc "List all Employee"

#       get do
#         # the tutorial had EmpData.all below when I created app but the model
#         # that was made was emp_datum.rb. So changed below and works.

#         EmpDatum.all
#       end

#       desc "create a new employee"
#       ## This takes care of parameter validation
#         params do
#           requires :name, type: String
#           requires :address, type:String
#           requires :age, type:Integer
#         end

#         ## This takes care of creating employee
#         post do
#           EmpDatum.create!({
#             name:params[:name],
#             address:params[:address],
#             age:params[:age]
#           })
#         end

#       desc "delete an employee"
#         params do
#           requires :id, type: String
#         end

#         delete ':id' do
#           EmpDatum.find(params[:id]).destroy!
#         end

#       desc "update an employee address"
#         params do
#           requires :id, type: String
#           requires :address, type:String
#         end

#         put ':id' do
#           EmpDatum.find(params[:id]).update({
#             address:params[:address]
#           })
#         end

#     end
#   end
# end