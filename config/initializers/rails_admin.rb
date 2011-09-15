# encoding: UTF-8

RailsAdmin.config do |config|
  config.authorize_with :cancan
 
  config.model User do
    list do
      field :name
      field :email
      field :role
      field :password
      field :password_confirmation
      field :sign_in_count
      field :current_sign_in_at
      field :last_sign_in_at
      field :current_sign_in_ip
      field :last_sign_in_ip
      field :created_at
    end
    show do
      field :name
      field :email
      field :role
      field :password
      field :password_confirmation
      field :sign_in_count
      field :current_sign_in_at
      field :last_sign_in_at
      field :current_sign_in_ip
      field :last_sign_in_ip
      field :created_at
    end
  end
  if Question.table_exists? 
    config.model Question do
      navigation_label '试题'
      list do
        field :title
        field :question_type, :belongs_to_association
        field :key
      end
      edit do
        field :question_type, :belongs_to_association
        field :title, :text do
          ckeditor do
            true
          end
        end
        field :key
      end
    end
  end

  if QuestionType.table_exists? 
    config.model QuestionType do
      parent Question
      edit do
        field :name
        field :type_cd, :enum do
          enum_method do
            :type_enum
          end
        end
        field :paper
      end
    end
  end

  if Answer.table_exists?
    config.model Answer do
      edit do
        field :question, :belongs_to_association
        field :content, :text do
          ckeditor do
            true
          end
        end
      end
    end
  end
end
