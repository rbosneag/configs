[user]
	name = {{NAME}}
	email = {{EMAIL}}
[color]
	branch = auto
	diff = auto
	interactive = auto
	status = auto
[core]
	excludesfile = ~/.gitignore
	autocrlf = false
	eol = lf
[push]
	default = current
[sendemail]
{{SENDEMAIL}}
[alias]
	lg = log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative

{{EXTRA}}
