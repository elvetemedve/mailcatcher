MailCatcher Cookbook
====================
Allows for installation of MailCatcher on CentOS boxes.

Recipes
----------
<table>
  <tr>
    <th>Name</th>
    <th>Explanation</th>
  </tr>
  <tr>
    <td><tt>mailcatcher</tt></td>
    <td>Basic installation of MailCatcher</td>
  </tr>
  <tr>
    <td><tt>mailcatcher::php</tt></td>
    <td>Sets the php <tt>sendmail_path</tt> to use MailCatcher</td>
  </tr>
</table>

Attributes
----------
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['mailcatcher']['bin']</tt></td>
    <td>String</td>
    <td>The location of the MailCatcher binary file</td>
    <td><tt>mailcatcher</tt></td>
  </tr>
  <tr>
    <td><tt>['mailcatcher']['smtp_ip']</tt></td>
    <td>String</td>
    <td>The ip address of the smtp server</td>
    <td><tt>127.0.0.1</tt></td>
  </tr>
  <tr>
    <td><tt>['mailcatcher']['smtp_port']</tt></td>
    <td>Integer</td>
    <td>The port of the smtp server</td>
    <td><tt>1025</tt></td>
  </tr>
  <tr>
    <td><tt>['mailcatcher']['http_ip']</tt></td>
    <td>String</td>
    <td>The ip address of the http server</td>
    <td><tt>0.0.0.0</tt></td>
  </tr>
  <tr>
    <td><tt>['mailcatcher']['http_port']</tt></td>
    <td>Integer</td>
    <td>The port of the http server</td>
    <td><tt>1080</tt></td>
  </tr>
</table>
