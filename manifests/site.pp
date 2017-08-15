node default {
    include cron-puppet
    include sshd
}

node /^jenkins\d+\.local/ {
    include cron-puppet
    class { 'sshd': }               # use nslcomotives sshd module
    class { 'apache': }             # use apache module
} 
