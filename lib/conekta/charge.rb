module Conekta
  class Charge < Resource
    include Conekta::Operations::Find
    include Conekta::Operations::Where
    include Conekta::Operations::Create
    include Conekta::Operations::CustomAction
    def capture
      custom_action(:post, 'capture', nil)
    end
    def refund(params=nil)
      if params == nil
        params = {"amount" => self.amount}
      else
        params = {"amount" => params}
      end
      custom_action(:post, 'refund', params)
    end
  end
end
