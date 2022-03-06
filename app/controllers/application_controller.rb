class ApplicationController < ActionController::Base

  #アカウント登録後のリダイレクト先
  def after_sign_up_path_for(resource)
    root_path
  end

  #アカウント編集後のリダイレクト先
  def after_update_path_for(resource)
    root_path
  end

  #ログイン後のリダイレクト先
  def after_sign_in_path_for(resource)
    root_path
  end

  #ログアウト後のリダイレクト先
  def after_sign_out_path_for(resources)
    root_path
  end
end
