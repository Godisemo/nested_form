require 'nested_form/builder_mixin'

module NestedForm
  class Builder < ::ActionView::Helpers::FormBuilder
    include ::NestedForm::BuilderMixin
  end
  
  begin
    require 'simple_form'
    class SimpleBuilder < ::SimpleForm::FormBuilder
      include ::NestedForm::BuilderMixin
    end
  rescue LoadError
  end
  
  begin
    require 'formtastic'
    class FormtasticBuilder < ::Formtastic::SemanticFormBuilder
      include ::NestedForm::BuilderMixin
    end
  rescue LoadError
  end
end