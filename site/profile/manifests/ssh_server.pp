class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => running,
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCZgDCvBZ3V/ZhzMM9HsrMS9g2iw5BnoxDJRbjWJfhumHN2aD3QfrA/y9cpUMFdXanmlyBoH+4EDtHZEEZiVl/bcw8NIa35BW4rOBPgiVS1Ib9tQWsrZzVjZ6XudhwHc0zoq5h53QaJSOzJgl1W8nE8wYp3vKNqXN5m3/KRlGMyGWBXljVzlwpNvSnW8Pv1E9WXXI95ergMD8aUMRe7yuLiWnDGlCLbIdUZAYVIUb/r0HyNZyYCSWXYYwGgWnoIoY+5Qh42NLl0FNnSqWlFQ/YsYqqQ6ZV+rHJLsqSyuHZC1Es6zbUAGcsRQsOF8XU5tR77PN5ziYki1qXk04GJsLSL',
  }
}
