# == Class gogs::params
#
# This class is meant to be called from gogs
# It sets variables and/or parameters according to platform
#
class gogs::params {

  # Instance settings
  $instance_name    = 'Gogs: Go Git Service'
  $owner            = 'gogs'
  $run_mode         = 'prod'

  # Repository
  $repository_root          = '/home/gogs/gogs-repositories'
  $repository_script_type   = 'bash'

  # Server
  $server_protocol              = 'http'
  $server_domain                = 'localhost'
  $server_root_url              = "http://${domain}:${port}/"
  $server_http_addr             = ''
  $server_http_port             = 6000
  $server_ssh_port              = 22
  $server_offline_mode          = false
  $server_disable_router_log    = false
  $server_cert_file             = 'custom/https/cert.pem'
  $server_key_file              = 'custom/https/key.pem'
  $server_static_root_path      = ''
  $server_enable_gzip           = false
  $server_landing_page          = 'explore'

  # Database
  $db_type         = 'postgres'
  $db_host         = 'localhost'
  $db_port         = 5432
  $db_name         = 'gogs'
  $db_user         = 'gogs'
  $db_password     = 'gogs'
  $db_ssl_mode     = 'disable'
  $db_data         = 'data/gogs.db'

  # Admin
  
  # Security
  $security_install_lock                        = true
  $security_secret_key                          = 'jdkR3DBcXUDdznd'
  $security_login_remember_days                 = 7
  $security_cookie_username                     = 'gogs_awesome'
  $security_cookie_remember_name                = 'gogs_incredible'
  $security_reverse_proxy_authentication_user   = 'X-WEBAUTH-USER'

  # Service
  $service_active_code_live_minutes                 = 180
  $service_reset_passwd_code_live_minutes           = 180
  $service_register_email_confirm                   = false
  $service_disable_registration                     = false
  $service_require_signin_view                      = false
  $service_enable_cache_avatar                      = false
  $service_enable_notify_mail                       = false
  $service_enable_reverse_proxy_authentication      = false
  $service_enable_reverse_proxy_auto_registeration  = false

  # Webhook
  $webhook_task_interval    = 1
  $webhook_deliver_timeout  = 5

  # Mailer
  $mailer_enabled           = false
  $mailer_send_buffer_len   = 10
  $mailer_subject           = '%(app_name)s'
  $mailer_host              = '' 
  $mailer_skip_verify       = ''
  $mailer_from              = ''
  $mailer_user              = ''
  $mailer_passwd            = ''

  # Oauth
  $oauth_enabled = 'false'

  # Oauth.github
  $oauth_github_enabled         = false
  $oauth_github_client_id       = ''
  $oauth_github_client_secret   = ''
  $oauth_github_scopes          = 'https://api.github.com/user'
  $oauth_github_auth_url        = 'https://github.com/login/oauth/authorize'
  $oauth_github_token_url       = 'https://github.com/login/oauth/access_token'
  
  # Oauth.google
  $oauth_google_enabled         = false
  $oauth_google_client_id       = ''
  $oauth_google_client_secret   = ''
  $oauth_google_scopes          = 'https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile'
  $oauth_google_auth_url        = 'https://accounts.google.com/o/oauth2/auth'
  $oauth_google_token_url       = 'https://accounts.google.com/o/oauth2/token'
  
  # Oauth.qq
  $oauth_qq_enabled             = false
  $oauth_qq_client_id           = ''
  $oauth_qq_client_secret       = ''
  $oauth_qq_scopes              = 'get_user_info'
  $oauth_qq_auth_url            = 'https://graph.qq.com/oauth2.0/authorize'
  $oauth_qq_token_url           = 'https://graph.qq.com/oauth2.0/token'
  
  # Oauth.weibo
  $oauth_weibo_enabled          = false
  $oauth_weibo_client_id        = ''
  $oauth_weibo_client_secret    = ''
  $oauth_weibo_scopes           = 'all'
  $oauth_weibo_auth_url         = 'https://api.weibo.com/oauth2/authorize'
  $oauth_weibo_token_url        = 'https://api.weibo.com/oauth2/access_token'

  # Cache
  $cache_adapter    = 'memory'
  $cache_interval   = 60
  $cache_host       = ''

  # Session
  $session_provider             = 'file'
  $session_provider_config      = 'data/sessions'
  $session_cookie_name          = 'i_like_gogits'
  $session_cookie_secure        = false
  $session_enable_set_cookie    = true
  $session_gc_interval_time     = 86400
  $session_session_life_time    = 86400

  # Picture
  $picture_service              = 'server'
  $picture_avatar_upload_path   = 'data/avatars'
  $picture_gravatar_source      = 'gravatar'
  $picture_disable_gravatar     = false

  # Attachment
  $attachment_enable        = true
  $attachment_path          = 'data/attachments'
  $attachment_allowed_types = 'image/jpeg|image/png'
  $attachment_max_size      = 32
  $attachment_max_files     = 10

  # Time
  $time_format = ''

  # Log
  $log_root_path    = ''
  $log_mode         = 'file'
  $log_buffer_len   = 10000
  $log_level        = 'Trace'

  # Log.console
  $log_console_level = 'Info'

  # Log.file
  $log_file_level           = 'Warn'
  $log_file_log_rotate      = true
  $log_file_max_lines       = 1000000
  $log_file_max_size_shift  = 28
  $log_file_daily_rotate    = true
  $log_file_max_days        = 7

  # Log.conn
  $log_conn_level               = ''
  $log_conn_reconnect_on_msg    = false
  $log_conn_reconnect           = false
  $log_conn_protocol            = 'tcp'
  $log_conn_addr                = ''

  # Log.smtp
  $log_smtp_level       = ''
  $log_smtp_subject     = 'Diagnostic message from server'
  $log_smtp_host        = ''
  $log_smtp_user        = ''
  $log_smtp_passwd      = ''
  $log_smtp_receivers   = ''

  # Log.database
  $log_database_level   = ''
  $log_database_driver  = ''
  $log_database_conn    = ''

  # Git
  $git_max_git_diff_lines   = 10000
  $git_gc_args              = "--aggressive --auto"

  # Git.fsck
  $git_fsck_enable      = true
  $git_fsck_interval    = 24
  $git_fsck_args        = ''

  # i18n
  $i18n_langs = 'en-US,zh-CN,zh-HK,de-DE,fr-FR,nl-NL,lv-LV'
  $i18n_names = 'English,简体中文,繁體中文,Deutsch,Français,Nederlands,Latviešu'

  # Parameter defaults
  $install_repo         = false
  $lock_install         = true
  $package_ensure       = 'present'
  $service_ensure       = 'running'

  # Variables
  $group        = 'gogs'
  $package_name = 'gogs'
  $service_name = 'gogs'

  case $::osfamily {
    'RedHat': {
      $initrd_script = 'initrd.centos'
    }
    'Debian': {
      $initrd_script = 'initrd.debian'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }

}
