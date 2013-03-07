# TODO: Documentation. More info: http://railscasts.com/episodes/386-authorization-from-scratch-part-2.
module Guachiman
  attr_reader :allowed_actions, :allow_all

  def allow(controllers, actions, &block)
    @allowed_actions ||= Hash.new
    Array(controllers).each do |controller|
      Array(actions).each do |action|
        allowed_actions[controller] ||= {}
        allowed_actions[controller].merge!({
          action => (block || true)
        })
      end
    end
  end

  def allow?(controller, action, resource = nil)
    allowed = allow_all || check_allowed_action(controller, action)
    !!allowed && (allowed == true || resource && allowed.call(resource))
  end

  def allow_all!
    @allow_all = true
  end

  private

  def check_allowed_action controller, action
    allowed_actions && allowed_actions[controller.to_sym] && allowed_actions[controller.to_sym][action.to_sym]
  end
end
