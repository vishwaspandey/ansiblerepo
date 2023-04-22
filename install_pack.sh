---
- hosts: linux
  become: yes
  tasks:
    - name: update apt cache make sure vim,curl and unzip are installed
      apt:
        name: "{{ item }}"
        update_cache: yes
      loop:
        - vim
        - curl
        - unzip


