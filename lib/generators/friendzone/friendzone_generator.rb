require 'rails/generators/named_base'
require 'rails/generators/active_record'
# require 'generators/devise/orm_helpers'

module Friendzone
  module Generators
    class FriendzoneGenerator < ActiveRecord::Generators::Base
      def hello
        puts "Hello"
      end

#       include Devise::Generators::OrmHelpers
      source_root File.expand_path("../templates", __FILE__)

      def copy_friendzone_migration
#         if (behavior == :invoke && model_exists?) || (behavior == :revoke && migration_exists?(table_name))
          # migration_template "migration_existing.rb", "db/migrate/add_friendzone_to_#{table_name}.rb"
#         else
          migration_template "migration.rb", "db/migrate/friendzone_create_#{singular_table_name}_friendships.rb"
#         end
      end

#       def generate_model
#         invoke "active_record:model", [name], migration: false unless model_exists? && behavior == :invoke
#       end

#       def inject_devise_content
#         content = model_contents

#         class_path = if namespaced?
#           class_name.to_s.split("::")
#         else
#           [class_name]
#         end

#         indent_depth = class_path.size - 1
#         content = content.split("\n").map { |line| "  " * indent_depth + line } .join("\n") << "\n"

#         inject_into_class(model_path, class_path.last, content) if model_exists?
#       end

#       def migration_data
# <<RUBY
#       ## Database authenticatable
#       t.string :email,              null: false, default: ""
#       t.string :encrypted_password, null: false, default: ""

#       ## Recoverable
#       t.string   :reset_password_token
#       t.datetime :reset_password_sent_at

#       ## Rememberable
#       t.datetime :remember_created_at

#       ## Trackable
#       t.integer  :sign_in_count, default: 0, null: false
#       t.datetime :current_sign_in_at
#       t.datetime :last_sign_in_at
#       t.#{ip_column} :current_sign_in_ip
#       t.#{ip_column} :last_sign_in_ip

#       ## Confirmable
#       # t.string   :confirmation_token
#       # t.datetime :confirmed_at
#       # t.datetime :confirmation_sent_at
#       # t.string   :unconfirmed_email # Only if using reconfirmable

#       ## Lockable
#       # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
#       # t.string   :unlock_token # Only if unlock strategy is :email or :both
#       # t.datetime :locked_at
# RUBY
#       end
    end
  end
end