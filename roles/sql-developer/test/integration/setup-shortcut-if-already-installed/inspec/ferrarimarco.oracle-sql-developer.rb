control "ferrarimarco.oracle-sql-developer" do
  title "ferrarimarco.oracle-sql-developer role check (setup shortcut if already installed)"

  sql_developer_directory_path = "/opt/oracle/sqldeveloper"
  sql_developer_executable_path = sql_developer_directory_path + "/sqldeveloper.sh"
  sql_developer_icon_path = sql_developer_directory_path + "/icon.png"

  describe file("/usr/share/applications/sqldeveloper.desktop") do
    it { should exist }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_readable.by_user('root') }
    its('mode') { should cmp '0644' }
    its('content') { should match('Exec=' + sql_developer_executable_path) }
    its('content') { should match('Icon=' + sql_developer_icon_path) }
  end

end
