#!/usr/bin/env ruby

require 'erb'

vars = <<~EOF
dsid
holding_qid
manuscript_qid
shelfmark
insitutional_id
EOF

template = ERB.new <<EOF
    @property
    def <%= name %>(self):
        return self.<%= inst_var %>

    @<%= name %>.setter
    def <%= name %>(self, <%= name %>):
        self.<%= inst_var %> = <%= name %>

EOF


vars.split("\n").each do |name|
  inst_var = "_#{name}"
  puts template.result binding
end