desc 'Create admin user'

namespace :cuzzascores do
	task :config_admin_user => :environment do
		gotpass = false
	  while true
			print "Enter password for \"admin\" user (which will have admin privs)\n"
			print "If empty, \"apg\" will be used to generate.\n"
			STDOUT.flush
			password = STDIN.gets.chomp!
			break if gotpass
		
			if (password.empty?)
				password = `apg -M NC -n 1`.chomp!
			end
		
			print "Password will be: '#{password}'\n"
			print "Okay? (y/n)"
			STDOUT.flush
			confirm = STDIN.gets.chomp!
			break if confirm.downcase == 'y'
		end
	
		adminrole = Role.where(:name => "admin").first
		if (adminrole == nil)
			print "Something Is wrong with the database! (no admin role!)\n"
			break
		end
		
		adminuser = User.where(:username => "admin").first
		if (adminuser == nil)
			adminuser = User.new
			adminuser.username = "admin"
		end
		adminuser.password = password
		adminuser.password_confirmation = password
		adminuser.save
	
		if adminuser.role_symbols.index(:admin) == nil
			adminuser.roles << adminrole
		end
	end
end