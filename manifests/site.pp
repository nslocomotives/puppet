node default {
    include cron-puppet
    include nslocomotives-sshd
}

node /^jenkins\d+\.local/ {
    include cron-puppet
    include nslocomotives-sshd
    include apache
} 
