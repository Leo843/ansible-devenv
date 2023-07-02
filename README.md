# ansible-devenv

Collection of playbooks to setup development environments

## Usage

Some tasks require an ssh-agent to be setup with a valid key that can access
private repositories.

```
> eval $(ssh-agent)
> ssh-add /path/to/ssh/key
```

Once the ssh-agent is setup, playbooks can be run using a local connection or
using an ssh connection.

```
ansible-playbook main.yml --connection=local -i localhost, -u <user> -k --ask-become-pass
```

```
ansible-playbook main.yml -i localhost, -u <user> -k --ask-become-pass --ssh-extra-args='-o ForwardAgent=yes'
```

## Test

The Dockerfile can be used to create containers that can be used to run
playbooks for testing purposes.
