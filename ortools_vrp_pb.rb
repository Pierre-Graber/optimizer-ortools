# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: ortools_vrp.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("ortools_vrp.proto", :syntax => :proto3) do
    add_message "ortools_vrp.Matrix" do
      optional :size, :uint32, 1
      repeated :time, :float, 2
      repeated :distance, :float, 3
      repeated :value, :float, 4
    end
    add_message "ortools_vrp.TimeWindow" do
      optional :start, :uint32, 1
      optional :end, :uint32, 2
      optional :maximum_lateness, :uint32, 3
    end
    add_message "ortools_vrp.Service" do
      repeated :time_windows, :message, 1, "ortools_vrp.TimeWindow"
      repeated :quantities, :float, 2
      optional :duration, :uint32, 3
      optional :priority, :uint32, 4
      repeated :vehicle_indices, :uint32, 5
      optional :matrix_index, :uint32, 6
      optional :setup_duration, :uint32, 7
      optional :id, :string, 9
      optional :late_multiplier, :float, 10
      repeated :setup_quantities, :float, 11
      optional :additional_value, :uint32, 12
      optional :exclusion_cost, :float, 13
      repeated :refill_quantities, :bool, 14
      optional :problem_index, :uint32, 15
      optional :point_id, :string, 16
      optional :alternative_index, :uint32, 17
    end
    add_message "ortools_vrp.Rest" do
      optional :time_window, :message, 1, "ortools_vrp.TimeWindow"
      optional :duration, :uint32, 2
      optional :id, :string, 3
      optional :late_multiplier, :float, 4
      optional :exclusion_cost, :float, 5
    end
    add_message "ortools_vrp.Capacity" do
      optional :limit, :float, 1
      optional :overload_multiplier, :float, 2
      optional :counting, :bool, 3
      optional :initial_limit, :float, 4
      optional :initial_load, :float, 5
    end
    add_message "ortools_vrp.Vehicle" do
      optional :id, :string, 1
      repeated :capacities, :message, 3, "ortools_vrp.Capacity"
      optional :time_window, :message, 4, "ortools_vrp.TimeWindow"
      repeated :rests, :message, 5, "ortools_vrp.Rest"
      optional :cost_fixed, :float, 6
      optional :cost_distance_multiplier, :float, 7
      optional :cost_time_multiplier, :float, 8
      optional :cost_waiting_time_multiplier, :float, 9
      optional :matrix_index, :uint32, 10
      optional :start_index, :sint32, 11
      optional :end_index, :sint32, 12
      optional :duration, :uint32, 13
      optional :shift_preference, :string, 14
      optional :cost_late_multiplier, :float, 15
      optional :day_index, :sint32, 16
      optional :value_matrix_index, :uint32, 17
      optional :cost_value_multiplier, :float, 18
      optional :max_ride_time, :uint32, 19
      optional :max_ride_distance, :uint32, 20
      optional :distance, :uint32, 22
      optional :coef_service, :float, 23
      optional :coef_setup, :float, 24
      optional :additional_service, :uint32, 25
      optional :additional_setup, :uint32, 26
      optional :free_approach, :bool, 27
      optional :free_return, :bool, 28
      optional :start_point_id, :string, 29
    end
    add_message "ortools_vrp.Relation" do
      optional :type, :string, 1
      repeated :linked_ids, :string, 2
      optional :lapse, :uint32, 3
      repeated :linked_vehicle_ids, :string, 4
    end
    add_message "ortools_vrp.Route" do
      optional :vehicle_id, :string, 1
      repeated :service_ids, :string, 2
    end
    add_message "ortools_vrp.Problem" do
      repeated :vehicles, :message, 3, "ortools_vrp.Vehicle"
      repeated :services, :message, 4, "ortools_vrp.Service"
      repeated :matrices, :message, 5, "ortools_vrp.Matrix"
      repeated :relations, :message, 6, "ortools_vrp.Relation"
      repeated :routes, :message, 7, "ortools_vrp.Route"
    end
  end
end

module OrtoolsVrp
  Matrix = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ortools_vrp.Matrix").msgclass
  TimeWindow = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ortools_vrp.TimeWindow").msgclass
  Service = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ortools_vrp.Service").msgclass
  Rest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ortools_vrp.Rest").msgclass
  Capacity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ortools_vrp.Capacity").msgclass
  Vehicle = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ortools_vrp.Vehicle").msgclass
  Relation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ortools_vrp.Relation").msgclass
  Route = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ortools_vrp.Route").msgclass
  Problem = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ortools_vrp.Problem").msgclass
end