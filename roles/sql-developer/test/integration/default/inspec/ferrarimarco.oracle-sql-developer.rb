control "ferrarimarco.oracle-sql-developer" do
  title "ferrarimarco.oracle-sql-developer role check"

  describe package('unzip') do
    it { should be_installed }
  end

  sql_developer_extract_path = "/opt/oracle"

  describe directory(sql_developer_extract_path) do
    it { should exist }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_readable.by_user('root') }
    its('mode') { should cmp '0755' }
  end

  sql_developer_directory_path = sql_developer_extract_path + "/sqldeveloper"

  describe directory(sql_developer_directory_path) do
    it { should exist }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_readable.by_user('root') }
    its('mode') { should cmp '0755' }
  end

  sql_developer_executable_path = sql_developer_directory_path + "/sqldeveloper.sh"

  describe file(sql_developer_executable_path) do
    it { should exist }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_readable.by_user('root') }
    its('mode') { should cmp '0755' }
  end

  shortcut_path = "/usr/share/applications/sqldeveloper.desktop"
    sql_developer_icon_path = sql_developer_directory_path + "/icon.png"
  describe file(shortcut_path) do
    it { should exist }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_readable.by_user('root') }
    its('mode') { should cmp '0644' }
    its('content') { should match('Exec=' + sql_developer_executable_path) }
    its('content') { should match('Icon=' + sql_developer_icon_path) }
  end

end
