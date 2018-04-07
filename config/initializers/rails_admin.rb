RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
    import
    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model 'Training' do
    label '練習会'
    include_fields_if do
      not name.match /_at$/
    end

  end

  config.model 'Member' do
    label 'プレイヤー'
    include_fields_if do
      not name.match /_at$/
    end
    exclude_fields :team_members
  end

  config.model 'Team' do
    label 'チーム'
    include_fields_if do
      not name.match /_at$/
    end
    field :training do
      associated_collection_cache_all false # 事前にモデルを読み込まなくなる
      associated_collection_scope do
        team = bindings[:object]
        Proc.new { |scope|
          # scoping all ParentModel
          scope = scope.limit(100) # 上限を増やす
        }
      end
    end
  end

  config.model 'TeamMember' do
    label 'チームメンバー'
    include_fields_if do
      not name.match /_at$/
    end

  end

  config.model 'Game' do
    label 'ゲーム'
    include_fields_if do
      not name.match /_at$/
    end
  end

end

# module RailsAdmin
#   module Config
#     module Fields
#       module Types
#         class Datetime < RailsAdmin::Config::Fields::Base
#           register_instance_option :date_format do
#             :default
#           end
#         end
#         class Date < RailsAdmin::Config::Fields::Types::Datetime
#           register_instance_option :date_format do
#             :default
#           end
#         end
#       end
#     end
#   end
# end
