class Store::BaseController < AuthController
  admin_access_only
  layout "auth"
end