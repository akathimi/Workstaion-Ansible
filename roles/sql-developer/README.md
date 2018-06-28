# Ansible Role: ferrarimarco.oracle-sql-developer

* Development branch: [![Build Status](https://travis-ci.org/ferrarimarco/ansible-role-oracle-sql-developer.svg?branch=development)](https://travis-ci.org/ferrarimarco/ansible-role-oracle-sql-developer)
* Master branch: [![Build Status](https://travis-ci.org/ferrarimarco/ansible-role-oracle-sql-developer.svg?branch=master)](https://travis-ci.org/ferrarimarco/ansible-role-oracle-sql-developer)

Ansible role to install Oracle SQL Developer. An archive containing Oracle SQL Developer must be provided as it cannot be redistributed.
The application of this role will fail if there is no archive available at the specified path.

## Using the role
### Installation
```
ansible-galaxy install ferrarimarco.oracle-sql-developer
```

### Example Playbook
```
  - hosts: all
    roles:
      - ferrarimarco.oracle-sql-developer
        ferrarimarco_oracle_sql_dev_archive_path: /path/to/oracle-sql-developer/archive
```

### Variables

See [`defaults/main.yml`](defaults/main.yml).

## Testing the role

### Dependencies
- Bundler 1.13.0+
- Ruby 2.3.0+
- Docker 1.12.0+
- See [`Gemfile`](Gemfile)
- See [`requirements.txt`](requirements.txt)

### Setup
1. Install the necessary tools: [`test/scripts/before-install.sh`](test/scripts/before-install.sh)
1. Install required gems from inside the root of the project: [`test/scripts/install.sh`](test/scripts/install.sh)
1. Run tests: [`test/scripts/test-role.sh`](test/scripts/test-role.sh)

Note that after installing the required gems you can run other Test-kitchen commands besides the ones listed in [`test/scripts/test-role.sh`](test/scripts/test-role.sh).
