class MealsController < AuthenticatedController
  inherit_resources

  protected
  def begin_of_association_chain
    current_user
  end
end
