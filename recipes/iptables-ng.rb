# Setup iptables rule to allow access to mailcatcher http port
iptables_ng_rule 'mailcatcher' do
  rule "--protocol tcp --dport #{node['mailcatcher']['http_port']} --match state --state NEW,ESTABLISHED --jump ACCEPT"
end