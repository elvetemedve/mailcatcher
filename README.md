mailcatcher-ng Cookbook
====================
Allows for installation of MailCatcher on CentOS boxes.

Recipes
----------

| Name              | Explanation                                       |
| ----------------- | ------------------------------------------------- |
| mailcatcher       | Basic installation of MailCatcher                 |
| mailcatcher::php  | Sets the php *sendmail_path* to use MailCatcher   |

Attributes
----------

| Key                                 | Type      | Description                                   | Default       |
| ----------------------------------- | --------- | --------------------------------------------- | ------------- |
| ['mailcatcher']['bin']              | String    | The location of the MailCatcher binary file   | mailcatcher   |
| ['mailcatcher']['smtp_ip']          | String    | The ip address of the smtp server             | 127.0.0.1     |
| ['mailcatcher']['smtp_port']        | Integer   | The port of the smtp server                   | 1025          |
| ['mailcatcher']['http_ip']          | String    | The ip address of the http server             | 0.0.0.0       |
| ['mailcatcher']['http_port']        | Integer   | The port of the http server                   | 1080          |
| ['mailcatcher']['catchmail_bin']    | String    | The location of the CatchMail binary file     | catchmail     |
| ['mailcatcher']['install_method']   | String    | The install method, rbenv or system           | rbenv         |
| ['mailcatcher']['ruby_version']     | String    | The rbenv ruby version to use                 | 2.2.3         |
| ['mailcatcher']['version']          | String    | The mailcatcher gem version to use            | 0.6.1         |
| ['mailcatcher']['php_envelope_from']| String    | An optional enveople from email address       | nil           |
