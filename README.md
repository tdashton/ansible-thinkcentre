# Getting Started

```sh
ansible-playbook --verbose --user your_ssh_user --ask-become-pass --inventory inventory.yaml ./kubernetes-playbook.yml
```

# Running Commands Manually

## Shell

```sh
ansible -i inventory.yaml 192.168.0.23 -m ansible.builtin.shell -a 'echo $TERM'
```

## Systemd With Variables

```sh
ansible -i inventory.yaml your_host1 -m ansible.builtin.systemd -a 'name=containerd.service state=restarted' --become --ask-become-pass
``` 

# Links

- https://docs.ansible.com/ansible/latest/command_guide/intro_adhoc.html
- https://docs.ansible.com/ansible/latest/collections/ansible/builtin/apt_module.html
- https://docs.ansible.com/ansible/latest/collections/ansible/builtin/systemd_module.html

