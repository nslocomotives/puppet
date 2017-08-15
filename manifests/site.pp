node default {
    include cron-puppet
    include sshd
}

node /^jenkins\d+\.local/ {
    include cron-puppet
    class { 'sshd': }               # use nslocomotives sshd module
    class { 'apache': }             # use apache module
} 

# TODO : write a node definition for the dev servers