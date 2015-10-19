
node.set['postfix']['main']['relayhost'] = "[#{node['mailcatcher']['smtp_ip']}]:#{node['mailcatcher']['smtp_port']}"
node.set['postfix']['main']['mydestination'] = ''

include_recipe 'postfix'