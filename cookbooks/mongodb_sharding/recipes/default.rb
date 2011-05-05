if @node[:instance_role] == 'util' && @node[:name].match(/mongodb/)
  require_recipe "mongodb_sharding::install"
end

if ['app_master','app','solo'].include? @node[:instance_role]
  require_recipe "mongodb_sharding::install"
end

