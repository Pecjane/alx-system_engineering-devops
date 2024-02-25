#Your SSH client configuration must be configured to use the private key ~/.ssh/school
file { '/etc/ssh/ssh_config':
  ensure  => file,
  mode    => '0600',
  content => "\
Host ubuntu
    HostName ubuntu
    IdentityFile ~/.ssh/school
    PasswordAuthentication no\n",
}
