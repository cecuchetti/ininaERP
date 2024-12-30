# ininaERP

Welcome to **ininaERP**, a next-generation CRM/ERP platform designed for seamless integration and enhanced automation. Leveraging the power of open-source, it includes automated installation, maintenance, and development of Odoo community modules.

As a "soft-fork" of the Odoo Community Edition (OCE), ininaERP emphasizes collaboration and aims to contribute enhancements back to the community. It is built on a robust foundation of production-ready modules supported by the Odoo Community Association (OCA) and a vibrant ecosystem of specialized companies. This ensures digital sovereignty while integrating pre-trained Generative Transformers (GPT) for advanced data management and automation.

Stay connected with us on Mastodon: [ininaERP on Fosstodon](https://fosstodon.org/@erplibre)

---

## Installation
Choose your preferred guide to set up your environment.


### Installation from Source Code

#### Minimal Dependencies for Ubuntu:
```bash
sudo apt install make git curl
```

#### Developer Dependencies for Ubuntu:
```bash
sudo apt install make build-essential libssl-dev zlib1g-dev libreadline-dev \
libsqlite3-dev curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev \
liblzma-dev libbz2-dev libldap2-dev libsasl2-dev
```

#### Clone the Project:
```bash
git clone https://github.com/ininaERP/ininaERP.git
cd ininaERP
```

#### Supported Platforms:
- Ubuntu 20.04, 22.04, 24.04
- macOS

#### Install and Configure:
```bash
make install_os
make install_odoo_16
```

Update the configuration file `config.conf` if you need to change the default interface:
```bash
xmlrpc_interface = 0.0.0.0
```

#### Check Version:
```bash
make version
```

#### Run ininaERP:
```bash
make run
```

---

## Additional Guides

- [Learn ininaERP](./doc/DISCOVER.md): A beginner’s guide.
- [Production Setup](./doc/PRODUCTION.md): Step-by-step for production environments.
- [Development Setup](./doc/DEVELOPMENT.md): Optimize your development environment.

### PyCharm Configuration
1. Open PyCharm:
    ```bash
    make pycharm_open
    ```

2. Close and configure it:
    ```bash
    make pycharm_configure
    ```

3. Reopen PyCharm:
    ```bash
    make pycharm_open
    ```

---

## Running the Application
Explore different use cases in the [Execution Guide](./doc/RUN.md).

---

## Git Repository Management
For repository customization, refer to [GIT_REPO.md](./doc/GIT_REPO.md).

---

## Testing
Run comprehensive tests for ininaERP using the code generator:
```bash
time make test_full_fast
```

